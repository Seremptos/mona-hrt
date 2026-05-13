#ifndef MONA_H
#define MONA_H
#include <windows.h>

void SetMinMaxWindowSize(HWND hwnd, LPARAM const lparam);
SIZE GetWindowDimensions(HWND, FLOAT width, FLOAT height);
bool FetchDarkModeStatus();
void LoadIcons();
void SetIcon(HWND hwnd, BOOL darkMode);
void SwitchMode(HWND hwnd);

#endif //MONA_H