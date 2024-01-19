/**
 * 条款39：明智而审慎地使用private继承
 * 
 * private继承意味着“利用被继承的类实现出”的设计语义
*/

class Timer {
public:
    explicit Timer(int tickFrequency);
    virtual void onTick() const;        // 每次定时器tick，此函数就会被调用一次
};

// 实现1：private继承
class WidgetPrvInheritance: private Timer {
private:
    virtual void onTick() const;        // 派生类可以重写此函数
};

// 实现2：组合 + private + public继承
// WidgetTimer放在private，而不是全局作用域，是为了防止被外部调用
// 这种写法略显复杂，但优点在于可以防止onTick被这个类的派生类所重写
class WidgetComposition {
private:
    class WidgetTimer: public Timer {
    public:
        virtual void onTick() const;    // 可以重写此函数
    };
    WidgetTimer timer;
};

int main() {

    return 0;
}