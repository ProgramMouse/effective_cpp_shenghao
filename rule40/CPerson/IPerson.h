/**
 * Interface Person
*/

#include <string>

class IPerson {
public:
    virtual std::string name() const = 0;           // 姓名
    virtual std::string birthDate() const = 0;      // 生日
    virtual ~IPerson();         // 基类的析构函数必须声明为虚函数
};