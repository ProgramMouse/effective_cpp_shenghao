#include <iostream>
#include <memory>
#include <vector>

class Window {
public:
    virtual void blink() {}     // Do nothing
};

class BlinkWindow : public Window {
    virtual void blink() override {
        std::cout << "BlinkWindow: Blink!" << std::endl;
    }
};

class MaximizedWindow : public Window {
public:
    void maximize();
    void restoreWindow();
};

int main() {
    using pw = std::shared_ptr<Window>;
    using vpw = std::vector<pw>;

    vpw winPtrs;
    // ...

    for (pw& p : winPtrs) {
        p->blink();
    }
    return 0;
}