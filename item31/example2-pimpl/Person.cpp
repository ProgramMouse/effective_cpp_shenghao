/**
 * 这个文件中包含必要的头文件，并且负责Person类的实现
 */

#include "Person.h"
#include "PersonImpl.h"

Person::Person(const std::string& name, const Date& birthday, const Address& addr) :
    pImpl(new PersonImpl(name, birthday, addr)) {}

std::string Person::name() const { return pImpl->name(); }