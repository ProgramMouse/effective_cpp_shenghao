#include <string>
#include <iostream>
#include <new>

class NewHandlerHolder {
public:
    explicit NewHandlerHolder(std::new_handler nh): handler(nh) {}
    ~NewHandlerHolder() {
        std::set_new_handler(handler);
    }

    // 禁止复制构造和赋值
    NewHandlerHolder(const NewHandlerHolder&) = delete;
    NewHandlerHolder& operator=(const NewHandlerHolder&) = delete;

private:
    std::new_handler handler;
};

class Widget {
public:
    static std::new_handler set_new_handler(std::new_handler p) noexcept;
    static void* operator new(std::size_t size) noexcept(false);

private:
    static std::new_handler currentHandler;
};

std::new_handler Widget::currentHandler = nullptr;

std::new_handler Widget::set_new_handler(std::new_handler p) noexcept {
    std::new_handler oldHander = currentHandler;
    currentHandler = p;
    return oldHander;
}

void* Widget::operator new(std::size_t size) noexcept(false) {
    NewHandlerHolder h(std::set_new_handler(currentHandler));
    return ::operator new(size);
}

void outOfMem() {
    std::cerr << "Unable to satisfy memory request!\n";
    std::abort();
}

int main() {
    void outOfMem();
    Widget::set_new_handler(outOfMem);      // 将Widget的new_handler设为outOfMem
    Widget* pw1 = new Widget;               // 调用Widget::operator new。如果new失败，会调用Widget类绑定的new_handler，即outOfMem

    std::string* ps = new std::string;      // 调用std::string::operator new。如果new失败，会调用默认new_handler，因为这不是Widget类的new_handler

    Widget::set_new_handler(nullptr);       // 将Widget的new_handler设为nullptr
    Widget* pw2 = new Widget;               // 调用Widget::operator new。如果new失败，会抛出bad_alloc异常，因为现在Widget类没有专门的new_handler
    return 0;
}