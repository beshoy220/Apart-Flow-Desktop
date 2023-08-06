import 'package:flutter/material.dart';

/// A class that contains the bool isDarkTheme that saves
/// the theme if it's dark or light
class ThemeSettings extends ChangeNotifier {
  bool isDarkTheme = true;

  void switchTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
