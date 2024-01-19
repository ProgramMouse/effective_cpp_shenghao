/**
 * 条款52：写了placement new也要写placement delete
*/
#include <new>
#include <string>

class Widget {
public:
    static void* operator new(std::size_t size) noexcept(false) { return ::operator new(size); }    // 正常的new内联实现
    static void operator delete(void* pMem) noexcept;                                               // 正常的delete声明

    static void* operator new(std::size_t size, std::string& log) noexcept(false);                  // placement new声明
    static void operator delete(void* pMem, std::string& log) noexcept;                             // placement delete声明
};

int main() {
    Widget* pw1 = new Widget;           // 正确，调用正常的operator new
                                        // 如果只声明placement new，而不声明正常的operator new，那么这里会报错
                                        // 因为正常的operator new名称会被遮盖
    std::string myLog = "";
    Widget* pw2 = new(myLog) Widget;    // 正确，调用placement new
                                        // 如果placement new申请内存之后，构造过程出现异常
                                        // 那么会调用placement delete，释放new申请的内存空间

    delete pw2;                         // 调用正常的delete
    delete pw1;                         // 调用正常的delete
    return 0;
}