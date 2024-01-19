/**
 * 条款54：不要轻忽编译器的警告
 * 
 * 这段示例代码，在g++编译器中，并不会发出警告
*/
#include <iostream>

class B {
public:
    virtual void f() const {
        std::cout << "Invoke B::f" << std::endl;
    }
};

class D: public B {
public:
    virtual void f() {
        std::cout << "Invoke D::f" << std::endl;
    }
};

int main() {
    B* pD = new D();
    pD->f();            // 输出"Invoke B::f"，因为派生类实际上没有重写基类的f函数，不构成动态多态
    delete pD;
    return 0;
}