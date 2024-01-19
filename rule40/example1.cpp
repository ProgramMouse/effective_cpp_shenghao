/**
 * 条款40：明智而审慎地使用多重继承
 * 
 * 优点：
 * 1. 编写代码时，多重继承比（复杂设计的）单继承更简便，代码可读性更高
 * 
 * 缺点：
 * 1. 如果一个类的多个基类内有相同的名称，那么多重继承会导致命名冲突
 * 2. 钻石继承结构会导致最终派生类内含多个初始基类的数据
 *    若想只保留一份数据，则需要使用virtual继承，而virtual继承同样会带来一系列实现上的开销
 * 
 * 总之，多重继承的缺点主要体现在语法机制，而不是设计理念或编程复杂度上。
*/

class BorrowableItem {      // 图书馆允许借出某些物品
public:
    void checkout();        // 离开时进行检查
};

class ElectronicGadget {
private:                    // 这里故意把该函数声明成private
    void checkout();        // 电子产品的自我检测
};

class MP3Player: public BorrowableItem, public ElectronicGadget {

};

int main() {
    MP3Player player1;
    player1.checkout();     // 编译错误：存在二义性
                            // 即使ElectronicGadget是private，亦是如此
    return 0;
}