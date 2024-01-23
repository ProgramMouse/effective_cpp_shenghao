/**
 * WebBrowser类和通用的非成员函数定义
*/
namespace WebBrowserStuff {
    class WebBrowser {
    public:
        void clearCache();
        void clearHistory();
        void removeCookies();
    private:
        // ...
    };

    // 通用函数（非成员函数）
    void clearBrowser(WebBrowser& wb);
}