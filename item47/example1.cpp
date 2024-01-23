/**
 * 条款47：请使用traits classes表现类型信息
 * 
 * traits是C++的一种编程技术约定，用于展现类型本身的信息
 * traits同时适用于内置类型和用户自定义类型
 * traits必须用模板来实现。习惯上，traits在定义时写作struct，但被称为“traits classes”
*/

#include <iterator>
#include <list>

template<typename IterT, typename DistT>
void myAdvance(IterT& iter, DistT d) {
    if (typeid(typename std::iterator_traits<IterT>::iterator_category)
        == typeid(std::random_access_iterator_tag))
    {
        iter += d;
    } else {
        if (d >= 0) {
            while (d > 0) {
                iter++;
                d--;
            }
        } else {
            while (d < 0) {
                iter--;
                d++;
            }
        }
    }
}

int main() {
    std::list<int>::iterator iter;

    /**
     * 这行代码编译报错
     * 因为myAdvance函数的iter参数，在编译期被特化为std::list<int>::iterator
     * std::list<int>::iterator是bidirectional_iterator_tag，而非random_access_iterator_tag，其不支持+=运算
     * 编译器发现程序试图执行+=运算，所以在编译期就报错
     * 
     * 实际上，即使没有这个报错，在运行期，由于if表达式返回false，这行+=代码也不会被执行
     * 这个例子很好地说明了编译器和运行期的区别
     */
    myAdvance(iter, 10);
    return 0;
}