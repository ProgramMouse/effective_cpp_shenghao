#include <vector>
#include <iostream>

/**
 * 现在，将WidgetImpl和Widget都变成模板类
 * 我们想要编写一个适用于模板Widget类的std::swap函数特化版本
*/

/**
 * 将std改为自定义命名空间，而后编写一个常规（而不是全特化后的）的模板函数
 */
namespace WidgetStuff {
    // 实际数据
    template <typename T>
    class WidgetImpl {
    public:
        // ...

    private:
        T a, b, c;
        std::vector<double> v;
        // ...
    };

    // 这个class使用pimpl（pointer to implementation）手法
    // Widget本身是个封装类，其中包含指向实际数据类型WidgetImpl的指针
    template <typename T>
    class Widget {
    public:
        Widget(WidgetImpl<T>& content) : pImpl(&content) {}
        Widget(const Widget<T>& rhs) = default;
        Widget<T>& operator=(const Widget<T>& rhs) {
            *pImpl = *(rhs.pImpl);
            return *this;
        }
        void swap(Widget<T>& other) {
            std::swap(pImpl, other.pImpl);
        }

    private:
        WidgetImpl<T>* pImpl;      // 指针，所指对象内含Widget数据
    };

    template<typename T>
    void swap(Widget<T>& a, Widget<T>& b) {
        std::cout << "Invoke WidgetStuff::swap" << std::endl;
        a.swap(b);
    }
}

template<typename T>
void customerSwap(T& obj1, T& obj2) {
    using std::swap;        // 不可或缺

    /**
     * 触发C++的Argument-dependent lookup（ADL）机制
     * 优先寻找命名空间内特化的swap函数并调用它
     * 如果找不到，就调用std::swap
     */
    swap(obj1, obj2);
}
int main() {
    using namespace WidgetStuff;
    WidgetImpl<int> wImpl1, wImpl2;
    Widget<int> w1(wImpl1);
    Widget<int> w2(wImpl2);

    /**
     * 调用过程：
     * customerSwap ->
     * WidgetStuff::swap ->             // 符合ADL条件：实参类型所在命名空间（WidgetStuff）内，存在声明格式与实参匹配的函数swap(Widget&, Widget&)
     * WidgetStuff::Widget类的swap成员函数 ->
     * std::swap(WidgetImpl&, WidgetImpl&)
    */
    customerSwap(w1, w2);

    double d1 = 2.5, d2 = 3.14;

    /**
     * 调用过程：
     * customerSwap ->
     * std::swap(double&, double&)->    // 实参不符合WidgetStuff命名空间内专属的swap的声明，因此调用std::swap
    */
    customerSwap(d1, d2);

    return 0;
}