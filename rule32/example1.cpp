/**
 * 条款32：确定你的public继承塑膜出“is-a”关系
*/

class Bird {};

class FlyingBird : public Bird {
public:
    virtual void fly();
};

// 企鹅不会飞，所以直接继承自Bird
class Penguin : public Bird {};