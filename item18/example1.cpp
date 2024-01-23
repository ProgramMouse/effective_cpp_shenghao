class Date {
public:
    Date(int month, int day, int year);
};

int main() {
    // 想要创建一个对象，代表2023年3月30日
    Date(3, 30, 2023);      // 正确
    Date(30, 3, 2023);      // 颠倒了月和日的顺序，但编译不报错
    Date(2, 30, 2023);      // 不存在2月30日，但不报错
    return 0;
}