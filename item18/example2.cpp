#include <utility>

struct Year {
    int val;
};

struct Month {
    int val;
};

struct Day {
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
    Date(3, 30, 2023);                      // 直接用int构造Date，无法通过编译
    Date(Day(30), Month(3), Year(2023));    // 月和日顺序颠倒，无法通过编译
    Date(Month(3), Day(30), Year(2023));    // 正确
    Date(Month(2), Day(30), Year(2023));    // 不能检查出“2月30日不存在”这一错误。还需改进...
    return 0;
}