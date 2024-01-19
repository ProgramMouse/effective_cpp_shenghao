#include <memory>
#include <istream>

class Mutex {};
typedef std::shared_ptr<Mutex> ptr_Mutex;
void lock(ptr_Mutex& mutex);
void unlock(ptr_Mutex& mutex);

class Lock {
public:
    Lock(Mutex* _mutex) : mutex(_mutex) { lock(mutex); }
    Lock(ptr_Mutex& _mutex) : mutex(_mutex) {
        lock(mutex);
    }
    ~Lock() { unlock(mutex); }
private:
    ptr_Mutex mutex;
};

class Image {};
typedef std::shared_ptr<Image> ptr_Image;

struct PMImpl {     // PMImpl = PrettyMenu Impl
    ptr_Image bgImage;
};
typedef std::shared_ptr<PMImpl> ptr_PMImpl;

class PrettyMenu {
public:
    void changeBackgroud(std::istream& imgSrc);
private:
    Mutex mutex;
    ptr_PMImpl pImpl;
};

/**
 * 这个例子也许可以用现代C++的移动赋值来优化，但不确定移动赋值的安全性如何保证
 */
void PrettyMenu::changeBackgroud(std::istream& imgSrc) {
    using std::swap;
    Lock ml(&mutex);

    // 创建副本：new新开一个空间，复制当前PrettyMenu.PMImpl所指向的内容到其中
    ptr_PMImpl pNew(new PMImpl(*pImpl));

    // 修改副本
    pNew->bgImage.reset(new Image(imgSrc));
    ++(pNew->imageChanges);

    // 交换指向堆空间中两个PMImpl对象的指针
    swap(pImpl, pNew);
}