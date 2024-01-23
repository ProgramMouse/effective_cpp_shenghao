
class Widget {};

// 输入i，返回一个相应的Widget对象
Widget getWidget(const int i);

/**
 * 优先使用iterate2的格式；除非确实对效率有很高要求，才考虑使用iterate1
*/
void iterate1(const int n) {
    Widget w;
    for (int i = 0; i < n; i++) {
        w = getWidget(i);
        // Do something else...
    }
}

void iterate2(const int n) {
    for (int i = 0; i < n; i++) {
        Widget w = getWidget(i);
        // Do something else...
    }
}