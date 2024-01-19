#include <iostream>
#include <memory>
#include <vector>

class Window {
public:

};

class SpecialWindow : public Window {
public:
    void blink();       // 闪烁效果；只有这个派生类拥有此函数
};

int main() {
    typedef std::shared_ptr<SpecialWindow> psw;
    typedef std::vector<psw> vpsw;
    vpsw windowPtrs;
    // ...

    for (psw& p : windowPtrs) {
        p->blink();
    }
    return 0;
}