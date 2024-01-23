#include "compare.h"
#include <cassert>

double compare::max(const std::vector<double>& data, const size_t size) {
    assert(size > 0);
    double maxVal = data[0];
    for (auto iter = data.begin() + 1; iter != data.end(); iter++) {
        if (*iter > maxVal) {
            maxVal = *iter;
        }
    }
    return maxVal;
}

double compare::min(const std::vector<double>& data, const size_t size) {
    assert(size > 0);
    double minVal = data[0];
    for (auto iter = data.begin() + 1; iter != data.end(); iter++) {
        if (*iter < minVal) {
            minVal = *iter;
        }
    }
    return minVal;
}