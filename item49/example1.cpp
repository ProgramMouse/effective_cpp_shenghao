/**
 * 条款49：了解new-handler的行为
*/

#include <iostream>
#include <new>

void outOfMem() {
    std::cerr << "Unable to satisfy memory request!\n";
    std::abort();
}

int main() {
    std::set_new_handler(outOfMem);
    int* pBigDataArray = new int[INT32_MAX];
    return 0;
}