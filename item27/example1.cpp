#include <iostream>

class Window {
public:
    virtual void onResize();
};

class SpecialWindow : public Window {
public:
    virtual void onResize() override {
        Window::onResize();                         // 正确
        // static_cast<Window>(*this).onResize();   // 错误！不能实现预期效果！
        // dynamic_cast<Window>(*this).onResize();  // 错误！不能实现预期效果！
    }
};
int main() {

    return 0;
}