import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class WindowTitleBar extends StatefulWidget {
  final bool isLightTheme;
  final Widget child;
  final Color? backgroundColor;
  final Color? iconColor;

  const WindowTitleBar(
      {super.key,
      required this.isLightTheme,
      required this.child,
      this.backgroundColor,
      this.iconColor});

  @override
  State<WindowTitleBar> createState() => _WindowTitleBarState();
}

class _WindowTitleBarState extends State<WindowTitleBar> {
  @override
  Widget build(BuildContext context) {
    const borderColor = Color(0x002B2B2B);
    final buttonColors = WindowButtonColors(
        iconNormal: widget.iconColor ??
            (widget.isLightTheme ? Colors.black : const Color(0xFFDCDCDC)),
        mouseOver: const Color(0x6B111154),
        mouseDown: const Color(0xFF2E2E2E),
        iconMouseOver: widget.iconColor ??
            (widget.isLightTheme ? Colors.black : const Color(0xFFDCDCDC)),
        iconMouseDown: const Color(0xFF070727));

    final closeButtonColors = WindowButtonColors(
        mouseOver: const Color(0xFFD32F2F),
        mouseDown: const Color(0xFFB71C1C),
        iconNormal: widget.iconColor ??
            (widget.isLightTheme ? Colors.black : const Color(0xFFDCDCDC)),
        iconMouseOver: const Color.fromARGB(255, 0, 0, 0));

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: WindowBorder(
            color: borderColor,
            width: 0,
            child: Container(
              color: widget.backgroundColor ??
                  (widget.isLightTheme
                      ? const Color(0xFFE8E8E8)
                      : const Color(0xFF0F0F0F)),
              child: WindowTitleBarBox(
                child: Row(
                  children: [
                    Expanded(child: MoveWindow()),
                    Row(
                      children: [
                        MinimizeWindowButton(colors: buttonColors),
                        appWindow.isMaximized
                            ? RestoreWindowButton(
                                colors: buttonColors,
                                onPressed: maximizeOrRestore,
                              )
                            : MaximizeWindowButton(
                                colors: buttonColors,
                                onPressed: maximizeOrRestore,
                              ),
                        CloseWindowButton(colors: closeButtonColors),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(flex: 25, child: widget.child)
      ],
    );
  }

  void maximizeOrRestore() {
    setState(() {
      appWindow.maximizeOrRestore();
    });
  }
}
