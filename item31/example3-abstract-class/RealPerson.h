#include <string>
#include "Person.h"
#include "Date.h"
#include "Address.h"

class RealPerson : public Person {
public:
    RealPerson(const std::string& name, const Date& birthday, const Address& addr)
        : theName(name), theBirthDate(birthday), theAddress(addr) {}
    virtual ~RealPerson() = default;
    std::string name() const override;
    std::string birthDate() const override;
    std::string address() const override;

private:
    std::string theName;
    Date theBirthDate;
    Address theAddress;
};