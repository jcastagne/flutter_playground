import 'package:flutter/material.dart';
import 'package:universal_app/ui/providers/themes.dart';

enum ThemeType { Toulouse, Bayonne, Dax }

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = toulouseTheme;
  ThemeType _themeType = ThemeType.Toulouse;

  getTheme() => _currentTheme;

  changeTheme(String city) {
    switch (city) {
      case 'Bayonne':
        _currentTheme = bayonneTheme;
        _themeType = ThemeType.Bayonne;
        break;
      case 'Toulouse':
        _currentTheme = toulouseTheme;
        _themeType = ThemeType.Toulouse;
        break;
      case 'Dax':
        _currentTheme = daxTheme;
        _themeType = ThemeType.Dax;
        break;
      default:
        _currentTheme = toulouseTheme;
        _themeType = ThemeType.Toulouse;
    }
    return notifyListeners();
  }
}
