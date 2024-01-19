// Example 3：阻止用户创建无效的年月日

#include <utility>

class Year {
public:
    explicit Year(const int _y) : val(_y) {}

private:
    int val;
};

// C++11：使用更为简洁的enum class
enum class Month : int {
    Jan = 1, Feb, Mar, Apr, May, Jun,
    Jul, Aug, Sep, Oct, Nov, Dec
};

// C++98：将构造函数设为private，以限制任意构造
// 类似的理念还运用在单例模式当中
// class Month {
// public:
//     static Month Jan() { return Month(1); }
//     static Month Feb() { return Month(2); }
//     static Month Mar() { return Month(3); }
//     // ... Other months
//     static Month Dec() { return Month(12); }
// private:
//     explicit Month(const int _m) : val(_m) {}
//     int val;
// };

class Day {
public:
    static Day Day1() { return Day(1); }
    static Day Day2() { return Day(2); }
    // ...Other days
    static Day Day30() { return Day(30); }
    static Day Day31() { return Day(31); }
private:
    explicit Day(const int _d) : val(_d) {}
    int val;
};

class Date {
public:
    Date(const Month& _m, const Day& _d, const Year& _y):
        month(_m), day(_d), year(_y) {}
    Date(Month&& _m, Day&& _d, Year&& _y) :
        month(std::move(_m)), day(std::move(_d)), year(std::move(_y)) {}

private:
    Year year;
    Month month;
    Day day;
};

int main() {
    Date(Month::Mar, Day::Day30(), Year(2023));       // 正确
    Date(Month::Feb, Day::Day30(), Year(2023));       // 不能检查出“2月30日不存在”这一错误。还需改进...
    return 0;
}