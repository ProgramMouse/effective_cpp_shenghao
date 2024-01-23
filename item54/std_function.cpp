/**
 * 条款54：让自己熟悉包括TR1在内的标准程序库
 * 
 * TR1已经作为C++11标准被发布。这里使用现代C++的语法
*/
#include <iostream>
#include <string>
#include <functional>

int num = 10;

/**
 * 假设有一个函数registerCallback，其参数是一个函数
 * 作为参数的函数，其约束是：接收一个int类型的输入，并返回一个std::string类型
*/

// 使用函数声明的写法
// void registerCallback(std::string func(int));

// 使用std::function的写法——它可以接受任何符合约束的callable entity，而不仅仅是函数
void registerCallback(std::function<std::string (int)> func) {
    std::cout << func(num) << std::endl;
    num++;
}

std::string printString(int num) {
    return num % 2 ? std::string("Odd") : std::string("Even");
}

int main() {
    for (int i = 0; i < 10; i++) {
        registerCallback(printString);
    }
    return 0;
}