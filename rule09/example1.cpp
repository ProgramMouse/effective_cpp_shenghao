/**
 * 条款9：绝不在构造和析构函数中调用virtual函数
*/

// Example 1
class Transaction {
public:
    Transaction() {
        init();
    }
    virtual void logTransaction() const = 0;
    void init() {
        logTransaction();
    }
};

class BuyTransaction : public Transaction {
public:
    virtual void logTransaction() const override;
};

class SellTransaction : public Transaction {
public:
    virtual void logTransaction() const override;
};

int main() {
    BuyTransaction bt;
    return 0;
}