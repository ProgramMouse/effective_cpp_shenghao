#include "WebBrowser.h"
#include "WebBrowserCookies.h"

using namespace WebBrowserStuff;

int main() {
    WebBrowser wb;
    importCookies(wb);

    return 0;
}