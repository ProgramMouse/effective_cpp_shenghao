#include <iostream>
#include "compare.h"

using namespace compare;
using std::cout;
using std::endl;

int main() {
    std::vector<double> data = { 1.2, 3.3, 5.4, 2.6, 4.7, 6.8 };
    const size_t dataSize = data.size();
    cout << "Min double is " << min(data, dataSize) << endl;
	cout << "Max double is " << max(data, dataSize) << endl;
    return 0;
}