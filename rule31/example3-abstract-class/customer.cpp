#include <iostream>
#include "Person.h"
#include "Date.h"
#include "Address.h"

int main() {
    typedef std::shared_ptr<Person> ptr_Person;

    std::string myName = "Shenghao";
    Date myBirthDate;
    Address myAddr;

    ptr_Person pp(Person::create(myName, myBirthDate, myAddr));
    std::cout << pp->name() << " was born on " << pp->birthDate()
              << " and now lives at " << pp->address() << std::endl;

    return 0;
}