class Bitmap {};

class Widget {
private:
    Bitmap* pb;     // 指向堆空间的对象。之后需要释放它

public:
    /**
     * 先进行同一性检验。这样保证了自我赋值安全性，但不能保证异常安全性。
     * 如果"new Bitmap"出现异常（如堆空间不足），那么pb最后将会指向一块未定义的内存空间。
    */
    Widget& operator=(const Widget& rhs) {
        // 先进行同一性检验
        if (this == &rhs) { return *this; }

        // 其余照旧
        delete pb;
        pb = new Bitmap(*rhs.pb);
        return *this;
    }
};