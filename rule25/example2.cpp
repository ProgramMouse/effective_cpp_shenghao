#include <vector>

// 实际数据
class WidgetImpl {
public:
    // ...

private:
    int a, b, c;
    std::vector<double> v;
    // ...
};

// 这个class使用pimpl（pointer to implementation）手法
// Widget本身是个封装类，其中包含指向实际数据类型WidgetImpl的指针
class Widget {
public:
    Widget(WidgetImpl& content) : pImpl(&content) {}
    Widget(const Widget& rhs) = default;
    Widget& operator=(const Widget& rhs) {
        *pImpl = *(rhs.pImpl);
        return *this;
    }
    void swap(Widget& other) {
        using std::swap;
        swap(pImpl, other.pImpl);
    }

private:
    WidgetImpl* pImpl;      // 指针，所指对象内含Widget数据
};

/**
 * 将namespace由myswap改为std
 * 注意：std::swap本身就已存在。这里是对std::swap进行全特化。注意，函数模板只能全特化，不能偏特化
 * 全特化的前提是函数模板存在。如果模板函数在当前命名空间不存在，则全特化不能通过编译
 * C++开发流程约定：不能向std命名空间新增内容，也不能修改其中的已有内容，但可以对std中已有模板进行特化
 */
namespace std {     // 不要忘记放在std命名空间内
    // 对std::swap进行全特化，编写适用于Widget类型的特化版本
    template <>
    void swap<Widget>(Widget& a, Widget& b) {
        a.swap(b);              // 只交换pImpl指针
    }

    // 不要这样做！它违反了C++编程约定
    // 在std命名空间内，不使用模板全特化，而是直接编写非模板函数
    // void swap(Widget& a, Widget& b) {
    //     a.swap(b);              // 只交换pImpl指针
    // }
}

int main() {
    WidgetImpl wImpl1, wImpl2;
    Widget w1(wImpl1);
    Widget w2(wImpl2);

    /**
     * 调用过程：
     * std命名空间中自定义的全特化swap函数 ->       （这一步是用户代码，没有发生变化）
     * Widget类的swap成员函数 ->
     * std命名空间中默认的swap模板函数
    */
    std::swap<Widget>(w1, w2);

    return 0;
}