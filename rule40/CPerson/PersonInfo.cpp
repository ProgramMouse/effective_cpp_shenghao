#include "PersonInfo.h"
#include <cstring>

const char* PersonInfo::valueDelimOpen() const {
    return "[";
}

const char* PersonInfo::valueDelimClose() const {
    return "]";
}

const char* PersonInfo::theName() const {
    // 在静态存储区声明一段缓冲区。它会被自动初始化为全0
    static char value[MAX_NAME_BUF_LEN];
    
    // 写入起始符号
    std::strcpy(value, valueDelimOpen());       // 注意，欲使用std::strcpy，需要包含的是<cstring>，而不是<string.h>
    
    // 现在，将value内的字符串添加到这个对象的name变量中

    // 写入结尾符号
    std::strcat(value, valueDelimClose());
    return value;
}