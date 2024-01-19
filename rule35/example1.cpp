/**
 * 条款36：考虑virtual函数以外的其他选择
*/

class GameCharacter;

// 计算健康指数的默认算法
int defaultHealthCalc(const GameCharacter& gc);

class GameCharacter {
public:
    typedef int (*HealthCalcFunc) (const GameCharacter&);   // typedef函数指针
    explicit GameCharacter(HealthCalcFunc hcf = defaultHealthCalc)
        : healthFunc(hcf) {}
    int healthValue() const { return healthFunc(*this); }

private:
    HealthCalcFunc healthFunc;
};