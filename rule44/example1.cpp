/**
 * 条款44：将与参数无关的代码抽离templates
 * 
 * 应用模板会导致代码膨胀。所以，合理的设计是，将与模板类型无关的代码，分离出来
*/

#include <iostream>

template<typename T, std::size_t n>
class SquareMatrix {
public:
    void invert();      // 求逆矩阵
};

int main() {
    SquareMatrix<double, 5> sm1;        // 生成第一份模板实例化代码
    sm1.invert();

    SquareMatrix<double, 10> sm2;       // 生成第二份模板实例化代码
    sm2.invert();
    return 0;
}