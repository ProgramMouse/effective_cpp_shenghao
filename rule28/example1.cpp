/**
 * 条款28：避免返回handles指向对象内部成分
*/

#include <memory>
#include "Point.h"

struct RectData {
    Point ulhc;     // Upper-left handle corner，左上角
    Point lrhc;     // Lower-right handle corner，右下角
};

class Rectangle {
public:
    Rectangle(RectData* pRectData) : pData(pRectData) {}
    Point& upperLeft() const { return pData->ulhc; }
    Point& lowerRight() const { return pData->lrhc; }
private:
    std::shared_ptr<RectData> pData;
};

int main() {
    Point p1(0, 0);
    Point p2(3, 4);
    RectData rectData1 = { p1, p2 };

    // ret_p_ul指向被销毁的空间！
    Point& ret_p_ul = Rectangle(&rectData1).upperLeft();
    return 0;
}