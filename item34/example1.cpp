/**
 * 条款34：区分接口继承和实现继承
*/
#include <string>
#include <iostream>

class Shape {
public:
    virtual void draw() const = 0;
    virtual void error(const std::string& msg);
    int objectId() const;
};

class Rectangle: public Shape {
    virtual void draw() const override;
};
class Ellipse: public Shape {
    virtual void draw() const override;
};

// 实现纯虚函数
void Shape::draw() const {
    std::cout << "Shape draw" << std::endl;
}

void Rectangle::draw() const {
    std::cout << "Rectangle draw" << std::endl;
}

void Ellipse::draw() const {
    std::cout << "Ellipse draw" << std::endl;
}

int main() {
    Shape* ps1 = new Rectangle();
    Shape* ps2 = new Ellipse();

    ps1->draw();
    ps2->draw();

    ps1->Shape::draw();         // 调用基类的draw函数，虽然绝大多数情况下没有意义
    return 0;
}