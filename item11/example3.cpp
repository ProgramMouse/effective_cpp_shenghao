class Bitmap {};

class Widget {
private:
    Bitmap* pb;     // 指向堆空间的对象。之后需要释放它

public:
    // 在更改pb指向之前，不要删除pb所指的内容
    Widget& operator=(const Widget& rhs) {
        Bitmap* pOrig = pb;
        pb = new Bitmap(*rhs.pb);
        delete pOrig;
        return *this;
    }
};