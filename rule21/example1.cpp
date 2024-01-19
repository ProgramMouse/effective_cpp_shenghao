/**
 * 条款21：必须返回对象时，别妄想返回其reference
*/

class Rational {
public:
    Rational(int numerator = 0, int denomonator = 1);

private:
    int n;      // 分子（numerator）
    int d;      // 分母（denominator）

    friend const Rational operator*(const Rational& lhs, const Rational& rhs);
};

// 正确
const Rational operator*(const Rational& lhs, const Rational& rhs) {
    Rational ret(lhs.n * rhs.n, lhs.d * rhs.d);
    return ret;
}

int main() {
    Rational a(1, 2);
    Rational b(3, 5);
    Rational c = a * b;
    return 0;
}