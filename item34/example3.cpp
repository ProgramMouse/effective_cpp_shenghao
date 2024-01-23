#include <iostream>

class Airplane {
public:
    virtual void fly() = 0;
};

// 纯虚函数的实现：作为接口的默认实现而存在，防止被planeC误用
void Airplane::fly() {
    std::cout << "Default flying mode, only applying to Model A and B." << std::endl;
}

class ModelA: public Airplane {
    virtual void fly() override { Airplane::fly(); }
};

class ModelB: public Airplane {
    virtual void fly() override { Airplane::fly(); }
};

class ModelC: public Airplane {
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