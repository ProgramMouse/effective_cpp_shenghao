// class Date;
// class Address;

class PersonImpl {
public:
    PersonImpl(const std::string& name, const Date& birthday, const Address& addr);
    std::string name() const;
    std::string birthDate() const;
    std::string address() const;
private:
    // 接口与实现分离：PersonImpl类中定义具体的成员变量
    std::string theName;
    std::string theBirthDate;
    std::string theAddress;
};