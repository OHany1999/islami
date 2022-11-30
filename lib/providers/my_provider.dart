import 'package:flutter/material.dart';

class MYProvider extends ChangeNotifier{

  String language = 'en';

  void ChangeLanguage(String languageCode){
    language = languageCode;
    notifyListeners();
  }

   ThemeMode themeMode = ThemeMode.light;

  void changeTheme(ThemeMode theme){
    themeMode = theme;
    notifyListeners();
  }

  String getBackground(){
    if(themeMode == ThemeMode.light){
      return 'assets/images/main_bg.png';
    }else{
      return 'assets/images/dark_background.png';
    }
  }

}