/**
 * 条款15：在资源管理类中提供对原始资源的访问
 * 
 * 不必担心允许用户访问RAII类的原始资源，会破坏封装性。
 * 因为RAII类的首要目的并不是封装，而是确保资源一定会被释放。
 * 如果用户不合理操作RAII类的原生资源，造成内存泄漏，那么责任在用户，而不在开发者。
*/

// C风格的接口
struct FontHandle {};                // 原生资源
FontHandle getFont();
void releaseFont(FontHandle fh);
void changeFontSize(FontHandle fh, int newSize);

// 资源管理类
class Font {
public:
    Font(FontHandle _fh) : fh(_fh) {}
    ~Font() { releaseFont(fh); }

    // 显式转换，允许用户获取原生资源对象（推荐）
    inline FontHandle get() const { return fh; }

    /**
     * 重载强制类型转换运算符operator FontHandle()
     * 实现隐式转换，返回原生资源对象
     * 优点是用户使用起来更加方便，缺点是可能导致误操作。不推荐。
     */
    operator FontHandle() const { return fh; }

private:
    FontHandle fh;      // 原生资源
};

int main() {
    FontHandle fh1 = getFont();
    Font font1(fh1);
    int newSize = 12;

    changeFontSize(font1.get(), newSize);                       // 显式获取原生资源
    changeFontSize(font1, newSize);                             // 隐式获取原生资源
    
    // 如果你不理解上一行，那么它等价于以下两行
    changeFontSize((FontHandle)font1, newSize);                 // C风格
    changeFontSize(static_cast<FontHandle>(font1), newSize);    // 现代C++风格
    return 0;
}