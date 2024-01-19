/**
 * 条款9：绝不在构造和析构函数中调用virtual函数
*/

#include <iostream>
#include <string>

class Transaction {
public:
    explicit Transaction(const std::string& logInfo) {
        logTransaction(logInfo);
    }

    // 非virtual函数，可以在构造函数中被调用
    void logTransaction(const std::string& logInfo) const;
};

class BuyTransaction : public Transaction {
public:
    BuyTransaction(const std::string& date, const int hour, const int minute, const int second) :
        Transaction(createLogString(date, hour, minute, second)) {}

private:
    // 使用静态成员函数，确保不使用（可能未初始化完毕的）类的非静态成员变量
    static std::string createLogString(
        const std::string& date, const int hour, const int minute, const int second
    );
};

// 函数实现
void Transaction::logTransaction(const std::string& logInfo) const {
    std::cout << logInfo << std::endl;
}

std::string BuyTransaction::createLogString(
    const std::string& date, const int hour, const int minute, const int second
) {
    std::string&& logString = date + " " +
                              std::to_string(hour) + ":" +
                              std::to_string(minute) + ":" +
                              std::to_string(second);
    return logString;
}

int main() {
    BuyTransaction bt1(std::string("2023-11-14"), 15, 25, 30);
    return 0;
}