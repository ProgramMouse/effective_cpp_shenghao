
/**
 * 条款07：为多态基类声明virtual析构函数
 */
#include <iostream>

// Example 1
class TimeKeeper {
public:
    TimeKeeper() {}
    virtual void displayTime() = 0;
    virtual ~TimeKeeper() {}
    // virtual ~TimeKeeper() = default;     // 自C++11起的写法
};

class AtomicClock: public TimeKeeper {
public:
    void displayTime() override {
        std::cout << "AtomicClock time!" << std::endl;
    }
};
class WaterClock: public TimeKeeper {
public:
    void displayTime() override {
        std::cout << "WaterClock time!" << std::endl;
    }
};
class WristWatch: public TimeKeeper {
public:
    void displayTime() override {
        std::cout << "WristWatch time!" << std::endl;
    }
};

// Example EXPANDED
class Base {
public:
   Base(){}
   virtual ~Base() = 0; // Declare Base's destructor as pure virtual
};

// You must implement Base's pure virtual destructor,
// because it is implicitly invoked in ~Derived().
Base::~Base() {}

class Derived: public Base {
public:
   Derived(){};
   ~Derived(){};
};

int main() {
   Base *pb = new Derived();
   delete pb;
   return 0;
} 