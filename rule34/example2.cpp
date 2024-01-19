#include <iostream>

class Airplane {
public:
    virtual void fly() = 0;     // 只能继承接口

protected:
    // 非虚函数，表示不应该被派生类重写
    virtual void defaultFly() final {
        std::cout << "Default flying mode, only applying to Model A and B." << std::endl;
    }
};

class ModelA: public Airplane {
public:
    // 实现基类的纯虚函数fly，具体方法是直接调用继承来的defaultFly
    virtual void fly() override { defaultFly(); }
};

class ModelB: public Airplane {
public:
    // 实现基类的纯虚函数fly，具体方法是直接调用继承来的defaultFly
    virtual void fly() override { defaultFly(); }
};

class ModelC: public Airplane {
public:
    virtual void fly() override {
        std::cout << "Model C flying mode." << std::endl;
    }
};

int main() {
    Airplane* planeA = new ModelA();
    Airplane* planeB = new ModelB();
    Airplane* planeC = new ModelC();

    planeA->fly();
    planeB->fly();
    planeC->fly();

    delete planeC;
    delete planeB;
    delete planeA;

    return 0;
}