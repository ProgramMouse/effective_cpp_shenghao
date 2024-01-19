#include <memory>
#include "Mutex.h"

// 方式2：使用带引用计数的浅拷贝（std::shared_ptr）
class Lock {
public:
    explicit Lock(Mutex* _pm) :
    mutexPtr(_pm, unlock)           // 引用计数为0时，自动调用unlock
                                    // 如果不指定unlock，那么默认行为是：引用计数为0时，释放资源
    {
        lock(mutexPtr.get());
    }
    Lock(const Lock&) = default;                // 默认复制构造函数。std::shared_ptr能够维护正确的资源引用计数
    Lock& operator=(const Lock&) = default;     // 默认赋值。std::shared_ptr能够维护正确的资源引用计数
    // ~Lock() { unlock(mutexPtr); }            // 无需定义析构函数。引用计数为0时，自动调用unlock
private:
    std::shared_ptr<Mutex> mutexPtr;
};

int main() {
    Mutex m;
    Lock m1(&m);

    Lock m2(m1);        // 复制构造合法，mutexPtr所指向的对象引用计数+1

    Lock m3(m1);        // 复制构造合法，mutexPtr所指向的对象引用计数+1
    m3 = m2;            // 赋值合法，mutexPtr所指向的对象引用计数不变
    return 0;
}