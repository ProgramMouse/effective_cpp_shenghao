class Rational {
public:
    Rational(int numerator = 0, int denomonator = 1);

private:
    int n;      // 分子（numerator）
    int d;      // 分母（denominator）

    friend const Rational& operator*(const Rational& lhs, const Rational& rhs);
};

// 错误示例1：返回局部对象的引用
// 返回后，局部对象空间被释放，引用指向未定义内存空间
const Rational& operator*(const Rational& lhs, const Rational& rhs) {
    Rational ret(lhs.n * rhs.n, lhs.d * rhs.d);
    return ret;
}

int main() {
    Rational a(1, 2);
    Rational b(3, 5);
    Rational c = a * b;
    return 0;
}