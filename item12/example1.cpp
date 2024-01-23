/**
 * 条款12：复制对象时勿忘其每一个成分
 * 
 * 1. 如果采用了自定义copying函数（包括复制构造函数和赋值运算符），
 *    那么当新增成员变量时，不要忘记在copying函数中复制它们。
 * 2. 在构造派生类时，不要忘记构造其中的基类成分。
 * 3. 不要令复制构造函数调用赋值运算符；反之亦然。
*/

#include <iostream>
#include <string>

void logCall(const std::string& funcName);      // log entry

class Customer {
public:
    explicit Customer() = default;
    explicit Customer(const Customer& rhs) : name(rhs.name) {
        std::cout << "Customer copy constructor." << std::endl;
    }
    Customer& operator=(const Customer& rhs) {
        std::cout << "Customer copy assignment." << std::endl;
        name = rhs.name;
        return *this;
    }

private:
    std::string name;
};

class PriorityCustomer : public Customer {
public:
    explicit PriorityCustomer() = default;
    explicit PriorityCustomer(const PriorityCustomer& rhs) :
        Customer(rhs),                      // 不要忘记在复制构造函数的初始化列表中初始化基类部分
        priority(rhs.priority)              // 在初始化列表中构造派生类部分
    {
        std::cout << "PriorityCustomer copy constructor." << std::endl;
    }
    PriorityCustomer& operator=(const PriorityCustomer& rhs) {
        std::cout << "PriorityCustomer copy assignment." << std::endl;
        Customer::operator=(rhs);           // 不要忘记调用基类构造函数，对基类部分进行赋值
        priority = rhs.priority;            // 对派生类部分进行赋值
        return *this;
    }
private:
    int priority;
};

// int main() {
//     return 0;
// }