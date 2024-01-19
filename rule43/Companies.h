/**
 * 条款43：学习处理模板化基类内的名称
*/
#include <string>

class CompanyA {
public:
    void sendClearText(const std::string& msg);
    void sendEncrypted(const std::string& msg);
};

class CompanyB {
public:
    void sendClearText(const std::string& msg);
    void sendEncrypted(const std::string& msg);
};

// CompanyZ没有sendClearText函数
class CompanyZ {
public:
    void sendEncrypted(const std::string& msg);
};