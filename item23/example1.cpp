/**
 * 条款23：宁以non-member、non-friend替换member函数
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

    // 使用非成员、非友元函数，不会降低WebBrowser类的封装性
    void clearBrowser(WebBrowser& wb);
}

void WebBrowserStuff::clearBrowser(WebBrowser& wb) {
    wb.clearCache();
    wb.clearHistory();
    wb.removeCookies();
}