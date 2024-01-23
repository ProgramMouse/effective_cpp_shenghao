/**
 * 条款16：成对使用new和delete时要采取相同形式
*/

#include <string>
#include <vector>

int main() {
    typedef std::string AddressLines[4];
    std::string* pal = new AddressLines;
    delete[] pal;           // 正确
    // delete pal;          // 错误，会造成内存泄漏
    return 0;
}