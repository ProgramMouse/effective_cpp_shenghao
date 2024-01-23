/**
 * 条款04：确定对象被使用前已先被初始化
*/

#include <iostream>
#include <string>

class Employee {
private:
    std::string mId;
    std::string mName;
public:
    Employee() {
        std::cout << "Default ctor" << std::endl;
    }
    Employee(const std::string& id, const std::string& name) {
        std::cout << "Before assignment, employee id = " << mId << ", name = " << mName << std::endl;
        std::cout << "ctor with arguments" << std::endl;
        mId = id;
        mName = name;
        std::cout << "After assignment, employee id = " << mId << ", name = " << mName << std::endl;
    }
};

int main() {
    //Employee e1;
    Employee e2("1234", "Shenghao");
    return 0;
}