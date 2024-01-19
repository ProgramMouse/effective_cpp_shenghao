#include <string>
#include <memory>

// 所引用的类声明
// 注意：不要用#include包含"Date.h"和"Address.h"——那是客户代码应该做的事
class Date;
class Address;

/**
 * 将Person声明为抽象类，作为接口存在
*/
class Person {
public:
    typedef std::shared_ptr<Person> ptr_Person;

    virtual ~Person();
    virtual std::string name() const = 0;
    virtual std::string birthDate() const = 0;
    virtual std::string address() const = 0;

    // 工厂函数（factory function），构造一个Person继承体系下的对象
    static ptr_Person create(
        const std::string& name, const Date& birthDate, const Address& addr
    );
};