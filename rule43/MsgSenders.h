#include "Companies.h"

class MsgInfo {};

std::string genMsg(const MsgInfo& info);

template<typename Company>
class MsgSender {
public:
    void sendClear(const MsgInfo& info) {
        std::string msg = genMsg(info);
        Company c;
        c.sendClearText(msg);
    }

    // 类似sendClear，只不过最后调用c.sendEncrypted
    void sendSecret(const MsgInfo& info) {
        std::string msg = genMsg(info);
        Company c;
        c.sendEncrypted(msg);
    }
};

// MsgSender针对CompanyZ进行全特化，因为CompanyZ没有sendClear函数
template<>
class MsgSender<CompanyZ> {
public:
    // 与通用版本的MsgSender::sendSecret相同
    void sendSecret(const MsgInfo& info) {
        std::string msg = genMsg(info);
        CompanyZ c;
        c.sendEncrypted(msg);
    }
};

// 继承模板类MsgSender，添加记录log的功能
template<typename Company>
class LoggingMsgSender: public MsgSender<Company> {
public:
    /**
     * 这里没有重写基类的同名函数，而是另外定义一个函数，这是正确做法
     * 因为基类的函数不是virtual函数，不应该被重写
    */
    void sendClearWithLog(const MsgInfo& info) {
        logBeforeSending();
        // sendClear(info);     // 调用继承而来的函数
                                // 注意：无法通过编译，因为编译器不能确定是否有sendClear函数；对于特化模板类，其可能没有该函数
        this->sendClear(info);  // 正确。开发人员向编译器保证，sendClear确实被继承了
        logAfterSending();
    }
    void logBeforeSending();
    void logAfterSending();
};

