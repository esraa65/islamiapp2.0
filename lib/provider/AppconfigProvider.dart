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
}
