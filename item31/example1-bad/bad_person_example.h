/**
 * 条款31：将文件间的编译依存关系降至最低
*/

/**
 * 常见的类声明方式，存在编译依存关系
 * Date.h和Address.h是自定义头文件，分别包含Date和Address类的实现细节
 * 一旦修改Date和Address类的实现细节，由于Person类成员变量定义了它们，所以Person类也会被修改，因而example1.cpp需要重新编译
 * 而后，所有用到example1.cpp类的其他文件，也要重新编译
 * 这就是编译依存的结果
*/

#include <string>
#include "Date.h"
#include "Address.h"

class Person {
public:
    Person(const std::string& name, const Date& birthday, const Address& addr);
    std::string name() const;
    std::string birthDate() const;
    std::string address() const;

private:
    // 在Person类中直接声明成员变量，包含实现细节
    std::string theName;
    std::string theBirthDate;
    std::string theAddress;
};

