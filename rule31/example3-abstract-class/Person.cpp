#include "RealPerson.h"

typedef std::shared_ptr<Person> ptr_Person;

// create函数实现，返回一个RealPerson对象
ptr_Person Person::create(const std::string& name, const Date& birthDate, const Address& addr) {
    ptr_Person ret = new RealPerson(name, birthDate, addr);
    return ret;
}