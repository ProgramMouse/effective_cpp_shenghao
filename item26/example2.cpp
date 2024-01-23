#include <string>
#include <stdexcept>

void encrypt(std::string& plainTextPassword);

std::string encryptPassword(const std::string& password) {
    if (password.length() < MinimumPasswordLength) {
        throw std::logic_error("Password too short");
    }
    std::string encrypted(password);
    encrypt(encrypted);
    return encrypted;
}