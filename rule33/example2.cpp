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

class Derived : public Base {
public:
    // using Base::mf1, Base::mf3;     // 使用using，让Base::mf1和Base::mf3在Derived作用域内可见
                                       // 加入（取消注释）这一行后，第25、28行将不会出现编译报错
    virtual void mf1();
    void mf3();
    void mf4();
};

int main() {
    Derived d;
    int x = 1;
    d.mf1();        // OK。调用Derived::mf1
    d.mf1(x);       // 错误。Base::mf1(int)被遮盖，因为Derived作用域内已经有mf1
    d.mf2();        // OK
    d.mf3();        // OK。调用Derived::mf3
    d.mf3(3.14);    // 错误。Base::mf3(double)被遮盖，因为Derived作用域内已经有mf3


    return 0;
}