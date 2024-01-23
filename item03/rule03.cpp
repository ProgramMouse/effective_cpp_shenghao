/**
 * 条款03：尽可能使用const
*/

#include <vector>
#include <cstring>
#include <iostream>

// Example 4
class TextBlock {
public:
    TextBlock(const std::string str) : text(str) {}
    const char& operator[] (std::size_t position) const
    {
        return text[position];
    }
    char& operator[] (std::size_t position)
    {
        return text[position];
    }
private:
    std::string text;
};

// Example 5
class CTextBlock {
public:
    std::size_t length() const;
private:
    char* pText;
    mutable std::size_t textLength;
    mutable bool lengthIsValid;
};
std::size_t CTextBlock::length() const
{
    if (!lengthIsValid) {
        textLength = std::strlen(pText);
        lengthIsValid = true;
    }
    return textLength;
}

// Example 6 - 常量性转除（casting away constness）
class TextBlock {
public:
    const char& operator[] (std::size_t position) const
    {
        // 一如既往
        return text[position];
    }
    // 让非const成员函数调用const版本，以减少代码重复（虽然并不美观）
    char& operator[] (std::size_t position)
    {
        return
            const_cast<char&>(                              // const_cast转除const限定
                static_cast<const TextBlock&>(*this)        // 为*this 加上const
                    [position]                              // 调用const op[]
            );
    }
private:
    std::string text;
};
int main() {
    // Example 1
    /**
     * const char：指针所指向的类型是常量类型，所以不能修改所指的值。
     * 
     * const p：
     * 指针变量p，本质上是一个整数，只不过编译器以地址的视角来解读这个整数。
     * const p意味着，这个指针变量的（整数）值不可变，也就是不可指向其他地址。
    */
    char greeting[] = "Hello";
    char* p = greeting;         // 数据可变，指针可变
    const char* p = greeting;   // 数据不可变，指针可变
    char* const p = greeting;   // 数据可变，指针不可变
    const char* const p = greeting; // 数据、指针均不可变

    // Example 2
    std::vector<int> vec(5);
    const std::vector<int>::iterator iter = vec.begin();
    *iter = 10;     // OK
    ++iter;         // Error

    std::vector<int>::const_iterator cIter = vec.begin();
    *cIter = 10;    // Error
    ++cIter;        // OK

    // Example 3
    class Rational {};
    const Rational operator*(const Rational& lhs, const Rational& rhs);

    Rational a, b, c;
    (a * b) = c;        // Error

    // Example 4
    TextBlock tb("Hello");
    std::cout << tb[0];             // 非const对象，调用非const成员函数

    const TextBlock ctb("World");
    std::cout << ctb[0];            // const对象，调用const成员函数

    tb[0] = 'x';                    // 只有返回值类型是char&而非char时，才能得出正确结果


    return 0;
}