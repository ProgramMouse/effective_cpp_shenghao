/**
 * 条款02：const, enum, inline
*/
// Example 1
const double AspectRatio = 1.653;       // 相比#define，const变量会被记录到符号表当中

// Example 2
class GamePlayer {
private:
    static const int numTurns = 5;      // 常量声明式
    int scores[numTurns];               // 使用该常量
};
const int GamePlayer::numTurns;         // 常量定义式（在类外）

// Example 3
class GamePlayer2 {
private:
    enum { numTurns2 = 5 };              // enum hack
    int scores[numTurns2];               // 使用该常量
};

// Example 4
template<typename T>
inline void callWithMax(const T& a, const T& b) {   // pass by reference-to-const
    f(a > b ? a : b);
}