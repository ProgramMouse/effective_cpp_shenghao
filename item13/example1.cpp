/**
 * 条款13：以对象管理资源
 * 
 * 将资源的释放行为放在对象析构函数中。
 * 当对象生命周期结束时，析构函数总是会被自动调用，从而确保资源被释放。
 * 
 * 这种设计理念被称为“Resource Acquisition Is Initialization（RAII）”。
 * 智能指针正是RAII理念的典型实现。
 * 
*/

#include <iostream>
#include <memory>       // 智能指针所在的库

class Investment {
public:
    Investment() = default;

    uint getBuyCounts() { return nBuy; }
    uint getSellCounts() { return nSell; }
    float getProfit() { return profit; }
    float getYield() { return yield; }

    void buy() { nBuy++; }
    void sell() { nSell++; }

private:
    uint nBuy;          // 买入次数
    uint nSell;         // 卖出次数
    float profit;       // 盈亏
    float yield;        // 收益率
};

std::shared_ptr<Investment> createInvestment() {
    std::shared_ptr<Investment> pInv(new Investment(), getRidOfInvestment);
    return pInv;
}

// 作为std::shared_ptr<Investment>的deleter。
// 当shared_ptr<Investment>引用计数为0时，自动调用本函数
void getRidOfInvestment(std::shared_ptr<Investment>&);

int main() {
    auto&& pInv1 = createInvestment();              // 这里是万能引用
    pInv1->buy();
    std::cout << "Times of buying: " << pInv1->getBuyCounts() << std::endl;

    std::shared_ptr<Investment>& pInv2 = pInv1;     // pInv1是右值引用，但它本身是左值
    std::cout << &pInv1 << std::endl;
    std::cout << &pInv2 << std::endl;

    std::shared_ptr<Investment>&& pInv3 = createInvestment();
    return 0;
}