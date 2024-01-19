/**
 * 在private继承中，使用转发函数（forwarding function），而不是using，
 * 做到只让基类的部分函数被实际调用到
 * 
 * private继承中，允许派生类限缩基类的特性
 * 所以，基类的部分函数，在派生类中可以变得不可见
 */

class Base {
private:
    int x;
public:
    virtual void mf1() = 0;
    virtual void mf1(int);
    virtual void mf2();
    void mf3();
    void mf3(double);
};

class Derived : private Base {
public:
    virtual void mf1() { Base::mf1(); }     // inline forwarding funtion，内联转发函数
    void mf3();
    void mf4();
};

int main() {
    Derived d;
    int x = 1;
    d.mf1();        // OK。调用Derived::mf1，间接调用Base::mf1
    d.mf1(x);       // 错误。Base::mf1(int)被遮盖


    return 0;
}