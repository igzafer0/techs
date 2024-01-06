// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:techs/config/theme/dark_theme.dart';
import 'package:techs/config/theme/light_theme.dart';

enum AppTheme { LIGHT, DARK }

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = DarkTheme.instance.theme;

  AppTheme _currenThemeEnum = AppTheme.DARK;

  AppTheme get currenThemeEnum => _currenThemeEnum;

  ThemeData get currentTheme => _currentTheme;

  void changeValue(AppTheme theme) {
    if (theme == AppTheme.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }

  void changeTheme() {
    if (_currenThemeEnum == AppTheme.LIGHT) {
      _currentTheme = DarkTheme.instance.theme;
      _currenThemeEnum = AppTheme.DARK;
    } else {
      _currentTheme = LightTheme.instance.theme;
      _currenThemeEnum = AppTheme.LIGHT;
    }
    notifyListeners();
  }
}
