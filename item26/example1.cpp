/**
 * 条款26：尽可能延后变量定义式出现的时间
*/

#include <string>
#include <stdexcept>

std::string encryptPassword(const std::string& password) {
    std::string encrypted;      // 如果函数抛出异常，则这个对象的构造和析构就变得无意义
    if (password.length() < MinimumPasswordLength) {
        throw std::logic_error("Password too short");
    }
    return encrypted;
}