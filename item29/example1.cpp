/**
 * 条款29：为“异常安全”而努力是值得的
*/

#include <iostream>

class Mutex {};
void lock(Mutex* mutex);
void unlock(Mutex* mutex);

class Image {};

// 用来表现带有背景图案的GUI菜单，且有一个Mutex用于多线程环境
class PrettyMenu {
public:
    void changeBackgroud(std::istream& imgSrc);     // 改变背景图像
private:
    Mutex mutex;            // 互斥锁
    Image* bgImage;         // 当前背景图像
    int imageChanges;       // 背景图像被改变的次数
};

/**
 * 当异常被抛出时，带有异常安全性的函数须满足：
 * 1. 不泄漏任何资源。本函数不满足此要求。
 * 因为如果new过程中出现异常，那么unlock不会被执行，导致mutex一直被占用
 * 
 * 2. 不允许数据错误。本函数不满足此要求。
 * 因为如果new过程中出现异常，那么bgImage将指向一块未被正确创建的内存空间
*/
void PrettyMenu::changeBackgroud(std::istream& imgSrc) {
    lock(&mutex);
    delete bgImage;
    ++imageChanges;
    bgImage = new Image(imgSrc);
    unlock(&mutex);
}