#include <iostream>
#include <new>

// handler1是最后一个可用的new_handler
void handler1() {
	std::cout << "handler1: Memory allocation failed, terminating\n";

    /**
     * 做法1：将new_handler设置为nullptr
     * 如果new_handler是nullptr，那么new失败时，程序会自动抛出bac_alloc异常
     * 这个异常会被main函数中的catch代码块捕获到，从而进入异常处理流程
     * 
     * 等价写法：
     * throw(std::bad_alloc());
     */
	std::set_new_handler(nullptr);
    // throw(std::bad_alloc());         // 等价写法

    /**
     * 做法2：直接调用std::abort()终止程序，不返回任何异常信息
     */
	// std::abort();
}

// handler0发现自己无法处理，就会调用set_new_handler，用另一个new_handler替换自己
void handler0() {
	std::cout << "handler0: Memory allocation failed, terminating\n";
	std::set_new_handler(handler1);
}

int main() {
	std::set_new_handler(handler0);     // 在用户代码中，将handler0设置为初始new_handler
    try {
		while (true) {
			new int[1000000000ul];
		}
	} catch (const std::bad_alloc& e) {
        std::cout << "bad_alloc caught!" << std::endl;
		std::cout << e.what() << std::endl;
	}
    return 0;
}

