/**
 * 条款45：运用成员函数模板接受所有兼容类型
 */
#include <iostream>
#include "inherit.h"

template<typename T>
class SmartPtr {
public:
    explicit SmartPtr(T* realPtr): heldPtr(realPtr) {}      // 以原生指针初始化

    // 默认复制构造函数
    SmartPtr(const SmartPtr& other) {
        std::cout << "Invoke default SmartPtr copy constructor." << std::endl;
    }

    // member function template
    // 这个泛化复制构造函数的初始化列表要求，从other.heldPtr到this->heldPtr的转换必须成立
    template<typename U>
    SmartPtr(const SmartPtr<U>& other): heldPtr(other.get()) {
        std::cout << "Invoke initialized template version of SmartPtr copy constructor." << std::endl;
    }

    T* get() const { return heldPtr; }

private:
    T* heldPtr;                         // 所组合的原生指针
};

int main() {
    // 我们希望像原生指针那样，支持动态多态
    SmartPtr<Top> pTop0 = SmartPtr<Top>(new Top);

    std::cout << "pTop1" << std::endl;
    SmartPtr<Top> pTop1 = pTop0;                            // 用相同类型构造，调用默认复制构造函数

    std::cout << "pTop2" << std::endl;
    SmartPtr<Top> pTop2 = SmartPtr<Middle>(new Middle);     // 用不同类型（派生类）构造，调用泛化复制构造函数

    std::cout << "pTop3" << std::endl;
    SmartPtr<Top> pTop3 = SmartPtr<Bottom>(new Bottom);     // 用不同类型（派生类）构造，调用泛化复制构造函数

    return 0;
}