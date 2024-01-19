#include <string>
#include <memory>

// 注意：不要包含自定义文件
// #include "Date.h"
// #include "Address.h"

// 相反，只写声明即可
class PersonImpl;
class Date;
class Address;

/**
 * 使用pimpl（Pointer to implementation）方式定义Person类
*/
class Person {
public:
    Person(const std::string& name, const Date& birthday, const Address& addr);
    std::string name() const;
    std::string birthDate() const;
    std::string address() const;
private:
    // 接口与实现分离：main class内只含有一个成员变量，即指向实现类的指针
    std::shared_ptr<PersonImpl> pImpl;
};