/**
 * 条款46：需要类型转换时请为模板定义非成员函数
*/

/**
 * 将条款24中的Rational类，扩展为模板类型
*/
template<typename T>
class Rational {
public:
    Rational(const T& numerator = 0, const T& denominator = 1);
    T numerator() const;
    T denominator() const;

    /**
     * 内联friend函数。内联是为了让这个函数被自动实例化，从而支持隐式类型转换
     * 注意，由于是friend，所以这个函数不是Rational的成员函数！
     * 换言之，这是一个[内联非成员函数(inline non-member function)]
     */
    friend const Rational operator*(const Rational& lhs, const Rational& rhs) {
        const Rational product(lhs.numerator() * rhs.numerator(), lhs.denominator() * rhs.denominator());
        return product;
    }

private:
    T n;        // 分子
    T d;        // 分母
};

int main() {
    Rational<int> oneHalf(1, 2);
    const Rational<int> result1 = oneHalf * Rational<int>(2);       // 正确，operator*的两个操作数都是Rational<int>
    const Rational<int> result2 = oneHalf * 2;                      // 错误。operator*的两个操作数，一个是Rational<int>，另一个是int
                                                                    // 编译器无法推导出T是什么
    return 0;
}