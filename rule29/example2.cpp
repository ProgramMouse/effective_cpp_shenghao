#include <iostream>
#include <memory>


class Mutex {};
typedef std::shared_ptr<Mutex> pMutex_t;

void lock(pMutex_t& mutex);
void unlock(pMutex_t& mutex);

/**
 * 用对象管理资源，防止异常发生时的资源泄漏
*/
class Lock {
public:
    Lock(pMutex_t& _mutex) : mutex(_mutex) { lock(mutex); }
    ~Lock() { unlock(mutex); }
private:
    pMutex_t mutex;
};

class Image {
public:
    Image(std::istream& imgSrc);
};

// 用来表现带有背景图案的GUI菜单，且有一个Mutex用于多线程环境
class PrettyMenu {
public:
    void changeBackgroud(std::istream& imgSrc);     // 改变背景图像
private:
    Mutex mutex;                            // 互斥锁
    std::shared_ptr<Image> bgImage;         // 当前背景图像
    int imageChanges;                       // 背景图像被改变的次数
};

/**
 * 当异常被抛出时，带有异常安全性的函数须满足：
 * 1. 不泄漏任何资源。修改：使用对象管理资源。
 * 
 * 2. 不允许数据错误。本函数不满足此要求。
 * 因为如果new过程中出现异常，那么bgImage将指向一块未被正确创建的内存空间
*/
void PrettyMenu::changeBackgroud(std::istream& imgSrc) {
    pMutex_t pm(&mutex);
    Lock ml(pm);
    bgImage.reset(new Image(imgSrc));   // 用new Image()的执行结果，设置bgImage的内部原生指针
    ++imageChanges;                     // 成功获取资源之后再自增
}