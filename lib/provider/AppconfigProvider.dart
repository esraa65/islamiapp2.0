import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String applangauge = 'en';

  void ChangeLangauge(String newlangauge) {
    if (applangauge == newlangauge) return;
    applangauge = newlangauge;
    notifyListeners();
  }

  String GetSelectedLanguagetext() {
    if (applangauge == "ar") {
      return 'Arabic';
    }
    return 'English';
  }

  ThemeMode appTheme = ThemeMode.light;

  void ChangeTheme(ThemeMode newtheme) {
    if (appTheme == newtheme) return;
    appTheme = newtheme;
    notifyListeners();
  }

  Object getSelectedTheme() {
    if (appTheme == ThemeMode.light) {
      return ThemeMode.light;
    }
    return ThemeMode.dark;
  }
  bool isLightmode(){
    return appTheme==ThemeMode.light ;
  }
}
