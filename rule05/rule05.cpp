/**
 * 条款05：了解C++默默编写并调用哪些函数
*/

#include <string>
#include <iostream>

// Example 2
template <typename T>
class NamedObject {
public:
    NamedObject(std::string& name): nameValue(name) {}

    NamedObject<T>& operator=(const NamedObject<T>& rhs) {
        this->nameValue = rhs.nameValue;
        // For objectValue, since it is constant, we do not modify it.
        return *this;
    }

public:
    std::string& nameValue;
};

int main() {
    // Example 2
    std::string newDog("Persephone");
    std::string oldDog("Satch");
    NamedObject<int> p(newDog);
    NamedObject<int> s(oldDog);

    p = s;      // OK. 但是，不确定是不是改变了引用的地址

    return 0;
}