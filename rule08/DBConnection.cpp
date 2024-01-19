/**
 * 条款08：别让异常逃离析构函数
*/

#include <iostream>
#include <vector>

// Example 1
class DBConnection {
public:
    static DBConnection create() {
        std::cout << "DBConnection create!" << std::endl;
        return DBConnection();
    }
    void close() {
        std::cout << "DBConnection close!" << std::endl;
    }
};

class DBConn {
public:
    DBConn(const DBConnection& db) {}
    DBConn(const DBConnection&& db) {}
    ~DBConn() {
        if (!closed) {
            // 如果客户没有手动调用db.close()，则在析构时自动调用它
            try {
                db.close();
                closed = true;
            } catch (const DBConnection& db) {
                // 在析构函数中遇到异常，则必须处理（终止程序，或者吞下)
                std::abort();
            }
        }
    }

    /**
     * 允许客户手动调用close()，这样设计的意义，更多是出于业务流程的考虑，而不是技术：
     * 1. 给客户手动调用的机会，让客户意识到这一功能的存在
     * 2. 允许客户看到异常后自行处理，而不是只能由开发者处理
     * 3. 如果出错，客户也会分担部分责任
     */
    void close() {
        std::cout << "Invoked by customer. Now close DBConnection." << std::endl;
        try {
            db.close();
            closed = true;
        } catch (const DBConnection& db) {
            std::abort();
        }
    }

private:
    DBConnection db;
    bool closed = false;
};

int main() {
    // 对于客户（使用DBConn的用户）而言，他只能看到创建行为，而看不到关闭行为
    DBConn dbc(DBConnection::create());
    dbc.close();
    return 0;
}