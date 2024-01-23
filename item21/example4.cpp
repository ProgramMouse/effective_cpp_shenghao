#include <iostream>

class Rational {
public:
    Rational(int numerator = 0, int denomonator = 1) : n(numerator), d(denomonator) {}

private:
    int n;      // 分子（numerator）
    int d;      // 分母（denominator）

    friend const Rational& operator*(const Rational& lhs, const Rational& rhs);
    friend const bool operator==(const Rational& lhs, const Rational& rhs);
};

// 错误示例3：在函数中声明静态变量，试图用静态变量存储
// 问题：
// 1. 静态变量只有一份，使得大小/相等判断毫无意义
// 2. 静态变量本来就是全局作用域，直接访问即可，根本没有必要画蛇添足作为函数返回值
const Rational& operator*(const Rational& lhs, const Rational& rhs) {
    static Rational s_rationalObj;
    s_rationalObj = Rational(lhs.n * rhs.n, lhs.d * rhs.d);
    return s_rationalObj;
}

const bool operator==(const Rational& lhs, const Rational& rhs) {
    return lhs.n == rhs.n && lhs.d == rhs.d;
}

int main() {
    Rational a(1, 2);
    Rational b(3, 5);
    Rational c(6, 7);
    Rational d(8, 9);
    if ((a * b) == (c * d)) {       // 警告：该判断表达式总是返回true！
        std::cout << "Equal" << std::endl;
    } else {
        std::cout << "Not equal" << std::endl;
    }
    return 0;
}