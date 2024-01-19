/**
 * 条款37：绝不重新定义继承而来的缺省参数值
*/

#include <iostream>

enum class ShapeColor {
    Red = 1, Green, Blue
};

class Shape {
public:
    // 不变的是默认参数，所以放在final函数里
    virtual void draw(ShapeColor color = ShapeColor::Red) const final {
        std::cout << "Common draw" << std::endl;
        specificDraw(color);        // 将默认参数传递给specificDraw
    }

private:
    // 将specifcDraw声明为private、virtual
    virtual void specificDraw(ShapeColor color) const {
        std::cout << "Shape-specific draw" << std::endl;
    }
};

// class Rectangle: public Shape {
// public:
//     // 冗余代码，不利于维护
//     virtual void draw(ShapeColor color = ShapeColor::Red) const override {
//         std::cout << "Rectangle: Shape color = " << static_cast<int>(color) << std::endl;
//     }
// };

class Rectangle: public Shape {
private:
    virtual void specificDraw(ShapeColor color) const {
        std::cout << "Rectangle-specific draw" << std::endl;
    }
};

int main() {
    Shape* pShape = new Shape();
    pShape->draw();

    Shape* pRect = new Rectangle();
    pRect->draw();      // 调用不可重写的draw函数
                        // 进而触发动态绑定，结合默认参数
                        // draw函数实际上调用Rectangle::specificDraw(ShapeColor::Red)

    delete pRect;
    return 0;
}