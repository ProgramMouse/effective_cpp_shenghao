#include <string>
#include <vector>
#include <array>
#include <iostream>

int main() {
    std::vector<std::string> addressLines = {"a", "b", "c", "d", "e"};
    std::cout << addressLines.size() << std::endl;
    std::cout << addressLines.capacity() << std::endl;

    addressLines.push_back("Hello");
    std::cout << addressLines.size() << std::endl;
    std::cout << addressLines.capacity() << std::endl;

    std::array<int, 5> arr1 = {1, 2, 3, 4, 5};
    for (auto&& num : arr1) {
        std::cout << num << " ";
    }
    std::cout << std::endl;
    return 0;
}