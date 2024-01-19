/**
 * 条款33：避免遮掩继承而来的名称
*/

class Base {
private:
    int x;
public:
    virtual void mf1() = 0;
    virtual void mf2();
    void mf3();
};

class Derived : public Base {
public:
    virtual void mf1();
    void mf4();
};

void Derived::mf4() {
    /**
     * 先在局部作用域（mf4函数体内）查找mf2，未找到；
     * 而后，在Derived作用域内查找mf2，未找到；
     * 而后，在Base作用域内查找mf2，找到。
    */
    mf2();
}