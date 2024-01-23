#include "CPerson.h"

CPerson::CPerson(DatabaseID dbId) : PersonInfo(dbId) {}

std::string CPerson::name() const {
    return static_cast<std::string>(PersonInfo::theName());
}

std::string CPerson::birthDate() const {
    return static_cast<std::string>(PersonInfo::theBirthDate());
}

const char* CPerson::valueDelimOpen() const {
    return "";
}

const char* CPerson::valueDelimClose() const {
    return "";
}