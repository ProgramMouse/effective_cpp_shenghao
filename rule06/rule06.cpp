/**
 * 条款06：若不想使用编译器自动生成的函数，就该明确拒绝
*/
#include <iostream>

// C++11之后的写法
class HomeForSale {
public:
    HomeForSale() = default;
    // Disable copy construction and assignment
    HomeForSale(const HomeForSale&) = delete;
    HomeForSale& operator=(const HomeForSale&) = delete;
};

int main() {
    HomeForSale home1();
    HomeForSale home2();
    HomeForSale home3(home1);   // 无法通过编译，因为复制构造函数被禁用
    home2 = home1;              // 无法通过编译，因为赋值运算被禁用
    return 0;
}