#include "Mona.h"

#include <dwmapi.h>

#include "resource.h"

#define DARK_MODE 0

SIZE GetWindowDimensions(HWND hwnd, FLOAT width, FLOAT height)
{
    HMONITOR monitor = MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);

    MONITORINFO mi = { sizeof(mi) };
    GetMonitorInfo(monitor, &mi);

    int screenWidth  = mi.rcMonitor.right - mi.rcMonitor.left;
    int screenHeight = mi.rcMonitor.bottom - mi.rcMonitor.top;

    UINT dpi = GetDpiForWindow(hwnd);
    float scale = dpi / 96.0f;

    return SIZE {
        static_cast<LONG>((screenWidth * width) * scale),
        static_cast<LONG>((screenHeight * height) * scale)
    };
}

void SetMinMaxWindowSize(HWND hwnd, LPARAM const lparam)
{
    MINMAXINFO* mmi = reinterpret_cast<MINMAXINFO*>(lparam);

    SIZE windowMinSize = GetWindowDimensions(hwnd, 0.2f, 0.5f);

    mmi->ptMinTrackSize.x = windowMinSize.cx;
    mmi->ptMinTrackSize.y = windowMinSize.cy;
}

void SwitchMode(HWND hwnd)
{
    BOOL darkMode = FetchDarkModeStatus();
    // Fix title bar staying in previous mode when switching between light and dark mode
    // This is a Flutter issue listening to the wrong event and might get fixed in the future
    DwmSetWindowAttribute(hwnd, DWMWA_USE_IMMERSIVE_DARK_MODE, &darkMode, sizeof(darkMode));
    SetIcon(hwnd, darkMode);
}

HICON LoadMonaIcon(LPCWSTR icon)
{
    return static_cast<HICON>(
        LoadImage(
        GetModuleHandle(nullptr),
        icon,
        IMAGE_ICON,
        0, 0,
        LR_DEFAULTSIZE)
        );
}

HICON dark_icon, light_icon = nullptr;

void LoadIcons()
{
    light_icon = LoadMonaIcon(MAKEINTRESOURCE(IDI_APP_ICON));
    dark_icon = LoadMonaIcon(MAKEINTRESOURCE(IDI_APP_ICON_DARK));
}

void SetIcon(HWND hwnd, BOOL darkMode)
{
    HICON icon = darkMode ? dark_icon : light_icon;
    SendMessage(hwnd, WM_SETICON, ICON_BIG, reinterpret_cast<LPARAM>(icon));
    SendMessage(hwnd, WM_SETICON, ICON_SMALL, reinterpret_cast<LPARAM>(icon));
}

bool FetchDarkModeStatus() {
    DWORD value = 0;
    DWORD size = sizeof(value);

    RegGetValueW(
        HKEY_CURRENT_USER,
        L"Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize",
        L"AppsUseLightTheme",
        RRF_RT_REG_DWORD,
        nullptr,
        &value,
        &size);

    return value == DARK_MODE;
}
