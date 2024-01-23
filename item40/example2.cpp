/**
 * virtual继承
*/

#include <string>

/**
 * 钻石继承结构：
 * 默认情况下，最终派生类（IOFile）当中会包含两个fileName，分别来自两条继承路径
*/
class File {
private:
    std::string fileName;
};
class InputFile: public File {};
class OutputFile: public File {};
class IOFile: public InputFile, public OutputFile {};   // 包含两个fileName

/**
 * 如果想让IOFile当中只包含一个fileName，则需要令第一级继承的两个类，都采用virtual继承
 */
class VInputFile: virtual public File {};
class VOutputFile: virtual public File {};
class IOFileSingleFileName: public VInputFile, public VOutputFile {};   // 只包含一个fileName
                                                                        // 这里的多重继承不要用virtual
