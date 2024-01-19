class GameCharacter;

// 计算健康指数的默认算法
int defaultHealthCalc(const GameCharacter& gc);

/**
 * 各种可调用物（callable entity）
 */

// 函数。注意返回值类型非int
int calcHealth(const GameCharacter&);

// 函数式对象
struct HealthCalculator {
    int operator() (const GameCharacter&) const;
};

// 包含目标成员函数的类
class GameLevel {
public:
    // 成员函数
    int health(const GameCharacter&) const;
};