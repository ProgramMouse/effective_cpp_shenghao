#include <iostream>
#include <memory>

class Widget {};
int priority();
void processWidget(std::shared_ptr<Widget> pw, int priority);

int main() {
    // processWidget(new Widget, priority());        // 错误，无法从原生指针隐式转换为std::shared_ptr
    
    /**
     * 以下这行代码能通过编译。但如果编译器最终以如下顺序执行：
     * - new Widget
     * - priority()
     * - 用new Widget返回的原生指针，初始化std::shared_ptr<Widget>
     * 
     * 此时，如果执行priority()过程中出现异常，则new Widget所创建的堆空间将不会被释放。
     * 因此，这行代码存在内存泄漏的可能性。
     * 
     * 另外，为了杜绝这种情形，在条件允许的情况下，可以将第6行的pw改为左值引用传递，而不是值传递。
     * 这样，这行代码返回的std::shared_ptr是右值，将无法通过编译；而正确的写法则不受影响。
     */
    processWidget(std::shared_ptr<Widget>(new Widget), priority());

    // 正确写法：将智能指针的创建写成单独的语句
    std::shared_ptr<Widget> pw(new Widget);
    processWidget(pw, priority());
    return 0;
}