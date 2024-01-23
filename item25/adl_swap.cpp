#include <iostream>

namespace PointStuff {
    template<typename T>
    struct Point {
        T x;
        T y;
    };

    template<typename T>
    void swap(Point<T>& p1, Point<T>& p2) {
        std::cout << "Invoke PointStuff::swap" << std::endl;
        T tempX = p1.x;
        p1.x = p2.x;
        p2.x = tempX;

        T tempY = p1.y;
        p1.y = p2.y;
        p2.y = tempY;
    }
};

int main() {
    using std::swap;    // 不能省略
    PointStuff::Point<int> p1 = { 1, 2 };
    PointStuff::Point<int> p2 = { 3, 4 };
    swap(p1, p2);       // 触发ADL，调用PointStuff::swap

    int a = 1;
    int b = 2;
    swap(a, b);         // 未触发ADL，调用std::swap
                        // 如果没有28行的using std::swap，则编译会报错
                        // 因为编译器会试图在当前命名空间，而不是std命名空间内查找swap函数
                        // 而当前命名空间内并没有swap函数，故匹配失败
    return 0;
}