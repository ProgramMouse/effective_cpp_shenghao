#include <new>
#include <iostream>
#include <cassert>

/**
 * 使用placement new进行求和运算。
 * 虽然用到了n个uint数，但申请的堆空间只有sizeof(uint)，而非n * sizeof(uint)
*/
int sum_placement_new(uint n) {
    uint sum = 0;
    uint* at = new uint;
    uint* pNum = nullptr;

    for (uint i = 1; i <= n; i++) {
        pNum = new(at) uint(i);
        assert(at == pNum);     // pNum就是在at处进行placement new，所以二者的所指向的地址应当相等
        sum += *pNum;
    }
    delete at;                  // 由于at和pNum指向相同内存空间，所以只要delete二者之一；
                                // 如果两个都delete，会导致重复释放
    at = pNum = nullptr;
    return sum;
}

int main() {
    uint sum = sum_placement_new(5);
    std::cout << "sum = " << sum << std::endl;
    return 0;
}


