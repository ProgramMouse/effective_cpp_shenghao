#include <iostream>  
#include <new> // 包含这个头文件来使用全局的 operator new 和 operator delete  
  
class Widget {
public:
    Widget() {
        std::cout << "Widget constructor" << std::endl;
    }
    Widget(Widget&& other) {
        std::cout << "Widget move constructor" << std::endl;
    }
    Widget& operator=(Widget&& other) {
        std::cout << "Widget move assignment" << std::endl;
        return *this;
    }
};

// 采用无参构造函数版本的keyword new实现。如果要令此函数支持参数，应该需要用到可变参数列表
template<typename T>
T* keyword_new_impl() {
    std::size_t sz = sizeof(T);
    void* v_ptr = ::operator new(sz);           // 调用全局operator new。这个过程可能抛出异常
    T* t_ptr = reinterpret_cast<T*>(v_ptr);
    *t_ptr = T();                               // 在t_ptr处构造对象（这一语义无法用C++代码直接表达，所以用相近的赋值语义来表示）
    return t_ptr;
}

int main() {
    Widget* pw1 = new Widget;
    Widget* pw2 = keyword_new_impl<Widget>();
    double* pd1 = keyword_new_impl<double>();

    delete pd1;
    delete pw2;
    delete pw1;
    return 0;
}