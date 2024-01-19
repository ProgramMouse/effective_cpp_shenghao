/**
 * 条款42：了解typename的双重含义
*/
#include <iostream>

template<typename C>
void print2nd(const C& container) {
    if (container.size() >= 2) {
        /**
         * 如果不加上typename，那么编译会报错，报错提示为：
         * error: need ‘typename’ before ‘C::iterator’ because ‘C’ is a dependent scope
         * 这是因为，编译器默认假定C::iterator不是一个类型，而是一个变量名
         */
        // C::iterator iter = container.begin();
        typename C::iterator iter = container.begin();      // 加上typename，正确
        ++iter;
        int value = *iter;
        std::cout << value << std::endl;
    }
}

template<typename C>
void func(const C& container,               // 不是nested dependent type name，不能使用typename
          const typename C::iterator iter   // 是nested dependent type name，必须使用typename
         );

template<typename IterT>
void workWithIterator(IterT iter) {
    using value_type = typename std::iterator_traits<IterT>::value;
    value_type temp(*iter);
}