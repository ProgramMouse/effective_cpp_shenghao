#include <iostream>
#include <limits>
#include <stdexcept>

/**
 *  在 try 块中，如果引发某个异常，类型与该异常的类型匹配的第一个关联 catch 块将捕获该异常。
 *  换言之，执行将从 throw 语句跳转到 catch 语句。
 *  如果未找到可用的 catch 块，则调用 std::terminate 并且程序会退出。
 *
 *  最后，C++ 既不提供也不需要 finally 块来确保在引发异常时释放所有资源。
*/
void MyFunc(int c) {
    if (c > std::numeric_limits<char>::max())
        throw std::invalid_argument("MyFunc argument too large.");
    //...
}

int main() {
    try {
        MyFunc(256); //cause an exception to throw
    }

    catch (std::invalid_argument& e) {
        std::cerr << e.what() << std::endl;
        return -1;
    }
    //...
    return 0;
}