#include <iostream>

template<typename T>
class SquareMatrixBase {
protected:
    // 求逆矩阵
    void invert(std::size_t matrixSize) {
        std::cout << "SquareMatrixBase::invert() invoked." << std::endl;
        /* 求逆矩阵的具体代码 */
    }
    // 其他代码，其中会用到模板参数T
};

/**
 * private继承，表示“利用某物实现出”这一语义
 * 因为是private继承，所以重写基类的非virtual函数invert，是合理的
 * 如果是public继承，那么原则上不应重写基类的非virtual函数
 * 
 * 另外，虽然形式上重写了invert，但重写后的实现方式也是调用基类的同名函数
 * 从实际效果来看，与public继承时不重写它，是完全相同的
*/
template<typename T, std::size_t n>
class SquareMatrix: private SquareMatrixBase<T> {
public:
    // 对于同一个模板参数T，即使n不同，实例化以后的invert代码，也都只有这一条调用语句，而不是包含基类invert的大量实现细节代码
    // 对于同一个模板参数T，SquareMatrixBase<T>::invert，即包含逆矩阵实现的代码，只会有一份
    void invert() { SquareMatrixBase<T>::invert(n); }
};

// 使用者的代码，与example1.cpp相同
int main() {
    SquareMatrix<double, 5> sm1;
    sm1.invert();

    SquareMatrix<double, 10> sm2;
    sm2.invert();
    return 0;
}