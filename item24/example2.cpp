/**
 * 条款24：若所有参数皆需类型转换，请为此采用non-member函数
*/
#include <iostream>

class Rational {
public:
    // 构造函数不使用explicit，允许将int转换为Rational
    Rational(const int numerator = 0, const int denominator = 1) :
        n(numerator), d(denominator) {}
    constexpr int numerator() const { return n; }       // 如果省略const，则printRational函数会报错
    constexpr int denominator() const { return d; }     // 如果省略const，则printRational函数会报错

    // 不恰当的写法
    // const Rational operator*(const Rational& rhs) {
    //     return Rational(n * rhs.n, d * rhs.d);
    // }

private:
    int n;      // 分子（numerator）
    int d;      // 分母（denominator）
};

// 正确写法
const Rational operator*(const Rational& lhs, const Rational& rhs) {
    return Rational(lhs.numerator() * rhs.numerator(), lhs.denominator() * rhs.denominator());
}

void printRational(const Rational& rational) {
    std::cout << rational.numerator() << "/" << rational.denominator() << std::endl;
}

int main() {
    Rational r1 = { 1, 2 };     // 1/2。隐式构造
    Rational r2(3, 4);          // 3/4。显式构造
    Rational r3 = 5;            // 5/1。隐式构造
    Rational prod_r1_r2 = r1 * r2;                  // 如果用值传递，则不需要加const
    const Rational&& prod_r1_r3_ref = r1 * r3;      // 如果用引用传递，需要使用const，因为返回值本身是const Rational
    printRational(prod_r1_r2);
    printRational(prod_r1_r3_ref);

    Rational prod_r1_5 = r1 * 5;        // 正确。'='右边等价于operator*(r1, Rational(5))
    Rational prod_5_r1 = 5 * r1;        // 正确。编译器找到了非成员函数的operator*()，满足operator*(int, Rational)
    printRational(prod_r1_5);
    printRational(prod_5_r1);

    return 0;
}