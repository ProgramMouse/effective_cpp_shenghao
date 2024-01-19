class Point {
public:
    Point(int _x = 0, int _y = 0) : x(_x), y(_y) {}
    int getX() { return x; }
    void setX(int newX) { x = newX; }
    int getY() { return y; }
    void setY(int newY) { y = newY; }
private:
    int x;
    int y;
};