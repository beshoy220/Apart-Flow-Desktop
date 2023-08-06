import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter/material.dart';
import 'dart:io';

/// Sets the minimual size for window
void windowSizeAndName({Size? size, String? name}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  if (Platform.isWindows) {
    WindowManager.instance.setMinimumSize(size!);
    // WindowManager.instance.setMaximumSize(const Size(1200, 600));
  }

  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(1200, 800);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = name!;
    win.show();
  });
}
