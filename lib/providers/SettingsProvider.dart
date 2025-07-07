import 'package:flutter/material.dart';

// Observable
// Publisher
class SettingsProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;

  changeTheme(ThemeMode newMode){
    if(themeMode == newMode) return;
    themeMode = newMode;
    notifyListeners();
  }
  String language = "en";
  
  changeLanguage(String newLanguage){
    if(newLanguage == language) return;
    language = newLanguage;
    notifyListeners();
  }
}