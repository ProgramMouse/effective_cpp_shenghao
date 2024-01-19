#include <memory>
#include "Mutex.h"

/**
 * 方式3：使用深拷贝
 * 通常不推荐，因为会造成资源浪费
 * 并且，在本例中，mutex的作用是实现临界区访问控制，使用深拷贝创建多个mutex对象，显然不符合需求
 * 因此，这个例子仅仅作为演示
 */
class Lock {
public:
    explicit Lock(Mutex* _pm) : mutexPtr(_pm) {
        lock(mutexPtr.get());
    }
    explicit Lock(const Lock& rhs) :            // 复制构造函数
        mutexPtr(std::make_unique<Mutex>(*rhs.mutexPtr))      // 申请一个全新的堆空间，内容与*rhs.mutexPtr相同
                                                // 而后，令this->mutexPtr指向它
    {
        lock(mutexPtr.get());
    }
    Lock& operator=(const Lock& rhs) {              // 赋值运算
        auto&& newMutexObj = std::make_unique<Mutex>(*rhs.mutexPtr).get();
        mutexPtr.reset(newMutexObj);
        return *this;
    }
    // ~Lock() { unlock(mutexPtr); }
private:
    std::unique_ptr<Mutex> mutexPtr;
};

int main() {
    Mutex m;
    Lock m1(&m);

    Lock m2(m1);        // 复制构造合法

    Lock m3(m1);        // 复制构造合法
    m3 = m2;            // 赋值合法。由于是unique_ptr，因此先销毁m3.mutex原来所指向的空间；
                        // 而后申请一个Mutex对象，用*m1.mutex初始化；
                        // 最后令m3.mutex指向新申请的空间所指向的对象
    return 0;
}