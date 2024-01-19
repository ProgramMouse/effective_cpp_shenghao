#include <iterator>
#include <stdexcept>

template<typename IterT, typename DistT>
void doAdvance(IterT& iter, DistT d, std::random_access_iterator_tag) {
    iter += d;
}

template<typename IterT, typename DistT>
void doAdvance(IterT& iter, DistT d, std::bidirectional_iterator_tag) {
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

template<typename IterT, typename DistT>
void doAdvance(IterT& iter, DistT d, std::input_iterator_tag) {
    if (d >= 0) {
        while (d > 0) {
            iter++;
            d--;
        }
    } else {
        throw std::out_of_range("Negative distance");
    }
}

template<typename IterT, typename DistT>
void myAdvance(IterT& iter, DistT d) {
    doAdvance(iter, d, typename std::iterator_traits<IterT>::iterator_category());
}