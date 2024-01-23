/**
 * 条款25：考虑写一个不抛异常的swap函数
*/
#include <vector>

namespace myswap {
    template <typename T>
    void swap(T& a, T& b) {
        T temp = a;
        a = b;
        b = temp;
    }
}

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

private:
    WidgetImpl* pImpl;      // 指针，所指对象内含Widget数据
};

int main() {
    WidgetImpl wImpl1, wImpl2;
    Widget w1(wImpl1);
    Widget w2(wImpl2);

    // 这里的swap会依赖一个临时变量temp，存在创建temp对象、复制构造、销毁temp对象等一系列操作
    // 但实际上，我们只需交换w1.pImpl和w2.pImpl即可，这样做高效得多
    myswap::swap<Widget>(w1, w2);

    return 0;
}