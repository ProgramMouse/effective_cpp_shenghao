class Rational {
public:
    Rational(int numerator = 0, int denomonator = 1);

private:
    int n;      // 分子（numerator）
    int d;      // 分母（denominator）

    friend const Rational& operator*(const Rational& lhs, const Rational& rhs);
};

// 错误示例2：使用new在堆空间创建对象并返回
// 连续相乘时，除了最后一次的结果，其他中间结果所对应的对象，都无法被定位到，导致内存泄漏
const Rational& operator*(const Rational& lhs, const Rational& rhs) {
    Rational* pRet = new Rational(lhs.n * rhs.n, lhs.d * rhs.d);
    return *pRet;
}

int main() {
    Rational a(1, 2);
    Rational b(3, 5);
    Rational c(6, 8);

    // 连续相乘时，除了最后一次的结果，其他中间结果所对应的对象，都无法被定位到，导致内存泄漏
    Rational res = a * b * c;
    delete &res;        // 只能定位并释放最终结果的对象空间
    return 0;
}