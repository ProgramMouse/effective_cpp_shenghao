/**
 * 条款52：写了placement new也要写placement delete
*/
#include <new>
#include <iostream>
#include <string>
#include <cassert>

/**
 * 本例是为了说明operator new/delete的名称遮盖问题，以及验证placement new的效果
 */
class Widget {
public:
    Widget() {
        std::cout << "Widget constructor" << std::endl;
    }
    /**
     * 对于正常的new/delete和nothrow new/delete，可以令它们直接调用全局版本的同类new/delete
    */
    // 正常的new
    static void* operator new(std::size_t size) noexcept(false) { return ::operator new(size); }
    // 正常的delete
    static void operator delete(void* pMem) noexcept { ::operator delete(pMem); }

    // Nothrow new。不会抛出异常，所以用noexcept，而不是noexcept(false)
    static void* operator new(std::size_t size, std::nothrow_t nt) noexcept { return ::operator new(size, nt); }
    // Nothrow delete
    static void operator delete(void* pMem, std::nothrow_t& nt) noexcept { return ::operator delete(pMem, nt); }

    // placement new
    static void* operator new(std::size_t size, void* at) noexcept(false) {
        return at;                              // 为了体现自定义placement new的实现，这里故意忽略安全性检查，直接返回at
        // return ::operator new(size, at);     // 事实上，直接调用全局版本，是最好的做法
    }
    // placement delete
    static void operator delete(void* pMem, void* at) noexcept { return ::operator delete(pMem, at); }
    
};

int main() {
    Widget* pw1 = new Widget;       // 正确，调用正常的operator new
    Widget* pw2 = new(pw1) Widget;  // 正确，调用placement new，在pw1处重新构造一个Widget

    assert(pw1 == pw2);
    delete pw2;                     // 调用正常的delete
    // delete pw1;                  // 注意pw1和pw2指向相同内存，所以不要重复释放
    return 0;
}