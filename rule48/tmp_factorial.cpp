#include <iostream>

// 模板，反映一般情况：Factorial(n) = n * Factorial(n - 1)
template<unsigned n>
struct Factorial {
    const static unsigned value = n * Factorial<n - 1>::value;
};

// 模板全特化：0的阶乘是1
template<>
struct Factorial<0> {
    const static unsigned value = 1;
};

int main() {
    unsigned int res = Factorial<5>::value;
    std::cout << res << std::endl;
    return 0;
}