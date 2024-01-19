/**
 * 条款14：在资源管理类中小心copying行为
*/

#include "Mutex.h"

// 方式1：禁止资源复制
class Lock {
public:
    explicit Lock(Mutex* _pm) : mutexPtr(_pm) {
        lock(mutexPtr);
    }

    // 禁止资源复制，即禁用复制构造函数和赋值运算符
    Lock(const Lock&) = delete;
    Lock& operator=(const Lock&) = delete;

    ~Lock() { unlock(mutexPtr); }
private:
    Mutex* mutexPtr;
};

int main() {
    Mutex m;
    Lock m1(&m);

    Lock m2(m1);        // 不合法，复制构造被禁用
    m2 = m1;            // 不合法，赋值被禁用
    return 0;
}