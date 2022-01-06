import 'package:flutter/material.dart';
import 'package:starbucks_clone_app/core/init/theme/starbucks_theme.dart';

class ThemeModel extends ChangeNotifier {
  ThemeData _themeData = starbucksTheme;

  ThemeData get getThemeData => _themeData;

  void setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}
