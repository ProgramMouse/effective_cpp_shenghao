/**
 * 条款01：视C++为一个语言联邦
*/
#include <iostream>

// Example 1
class A {
public:
    A();        // default constructor
};

class B {
public:
    explicit B(int x = 0);   // Non-default constructor
};

class C {
public:
    explicit C(int x);      // Non-default constructor
};

void doSomething(B bObject) {
    // Do something
}

int main() {
    // Example 1
    B bObj1;
    B bObj2(28);
    doSomething(28);    // 如果构造函数B没有explicit修饰，则该表达式可以通过编译，因为发生了隐式类型转换
    doSomething(B(28));

    return 0;
}