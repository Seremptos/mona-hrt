#include "flutter_window.h"

#include <optional>
// Mona start
#include "Mona.h"
#include <windows.h>
#include <winreg.h>
// Mona end

#include "flutter/generated_plugin_registrant.h"

FlutterWindow::FlutterWindow(const flutter::DartProject& project)
    : project_(project) {}

FlutterWindow::~FlutterWindow() {}

bool FlutterWindow::OnCreate() {
  if (!Win32Window::OnCreate()) {
    return false;
  }

  // Mona start - Resize window
  SIZE windowSize = GetWindowDimensions(GetHandle(), 0.3f, 0.6f);
  GetHandle();
  // Mona end

  // Mona start - Change icon between light and dark mode
  LoadIcons();
  SetIcon(GetHandle(), FetchDarkModeStatus());
  // Mona end

  RECT frame = GetClientArea();

  // The size here must match the window dimensions to avoid unnecessary surface
  // creation / destruction in the startup path.
  flutter_controller_ = std::make_unique<flutter::FlutterViewController>(
      frame.right - frame.left, frame.bottom - frame.top, project_);
  // Ensure that basic setup of the controller was successful.
  if (!flutter_controller_->engine() || !flutter_controller_->view()) {
    return false;
  }
  RegisterPlugins(flutter_controller_->engine());
  SetChildContent(flutter_controller_->view()->GetNativeWindow());

  flutter_controller_->engine()->SetNextFrameCallback([&]() {
    this->Show();
  });

  // Flutter can complete the first frame before the "show window" callback is
  // registered. The following call ensures a frame is pending to ensure the
  // window is shown. It is a no-op if the first frame hasn't completed yet.
  flutter_controller_->ForceRedraw();

  return true;
}

void FlutterWindow::OnDestroy() {
  if (flutter_controller_) {
    flutter_controller_ = nullptr;
  }

  Win32Window::OnDestroy();
}

LRESULT
FlutterWindow::MessageHandler(HWND hwnd, UINT const message,
                              WPARAM const wparam,
                              LPARAM const lparam) noexcept {
  // Give Flutter, including plugins, an opportunity to handle window messages.
  if (flutter_controller_) {
    std::optional<LRESULT> result =
        flutter_controller_->HandleTopLevelWindowProc(hwnd, message, wparam,
                                                      lparam);
    if (result) {
      return *result;
    }
  }

  switch (message) {
    case WM_FONTCHANGE:
      flutter_controller_->engine()->ReloadSystemFonts();
      break;
    // Mona start - Change icon between light and dark mode
    case WM_SETTINGCHANGE:
      {
        // Only run if it concerns light/dark mode
        if (!lparam || wcscmp((LPCWSTR)lparam, L"ImmersiveColorSet") != 0) break;
        SwitchMode(hwnd);
      }
      break;

    // Mona end
    // Mona start - Force window size to not be too small
    case WM_GETMINMAXINFO:
      {
        SetMinMaxWindowSize(hwnd, lparam);
      }
      break;
    // Mona end
  }

  return Win32Window::MessageHandler(hwnd, message, wparam, lparam);
}
