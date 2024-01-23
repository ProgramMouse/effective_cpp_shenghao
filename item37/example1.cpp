/**
 * 条款37：绝不重新定义继承而来的缺省参数值
*/

#include <iostream>

enum class ShapeColor {
    Red = 1, Green, Blue
};

class Shape {
public:
    virtual void draw(ShapeColor color = ShapeColor::Red) const = 0;
};

class Rectangle: public Shape {
public:
    // 修改虚函数默认参数，这是糟糕的设计！
    virtual void draw(ShapeColor color = ShapeColor::Green) const override {
        std::cout << "Rectangle: Shape color = " << static_cast<int>(color) << std::endl;
    }
};

int main() {
    Shape* pRect = new Rectangle();
    pRect->draw();      // draw函数是动态绑定，调用Rectangle::draw；
                        // 然而，默认参数是静态绑定，所以将会沿用Shape类，而不是Rectangle类的默认参数

    delete pRect;
    return 0;
}