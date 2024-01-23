/**
 * 条款11：在operator=中处理“自我赋值”
*/

class Bitmap {};

class Widget {
private:
    Bitmap* pb;     // 指向堆空间的对象。之后需要释放它

public:
    /**
     * 如果发生自我赋值，即this->pb和rhs.pb指向相同内存地址，则：
     * 首先，delete pb会将二者共同指向的pb对象释放；
     * 之后，*rhs.pb指向一块未定义（已被释放）的内存，它被用于赋值给this->pb。
     * 最后，this->pb和rhs.pb共同指向一块未定义内存。
     *
     * 在整个自我赋值过程中，pb实际上没有更改指向，但是其所指向的内存被释放了。
     */
    Widget& operator=(const Widget& rhs) {
        delete pb;
        pb = new Bitmap(*rhs.pb);
        return *this;
    }
};