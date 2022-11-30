import 'package:flutter/material.dart';

class MYProvider extends ChangeNotifier{

  String language = 'en';

  void ChangeLanguage(String languageCode){
    language = languageCode;
    notifyListeners();
  }
//-----------------------------------------
   ThemeMode themeMode = ThemeMode.light;

  void changeTheme(ThemeMode theme){
    themeMode = theme;
    notifyListeners();
  }
//------------------------------------
  String getBackground(){
    if(themeMode == ThemeMode.light){
      return 'assets/images/main_bg.png';
    }else{
      return 'assets/images/dark_background.png';
    }
  }
  //----------------------------
  int number = 0;
  String Tasebh='سبحان الله';

  void ChangeTasebhNumber(){
    number++;
    if(number == 33 && Tasebh == 'سبحان الله'){
      number=0;
      Tasebh='الحمد لله';
    }
    else if(number == 33 && Tasebh == 'الحمد لله'){
      number=0;
      Tasebh='لا اله الا الله';
    }else if(number == 33 && Tasebh =='لا اله الا الله'){
      number=0;
      Tasebh='سبحان الله';
    }
    notifyListeners();
  }
  String BodysebhaImage(){
    if(themeMode == ThemeMode.light){
      return 'assets/images/bodySebha.png';
    }else{
      return 'assets/images/bodySebhaDark.png';
    }
  }
  String HeadsebhaImage(){
    if(themeMode == ThemeMode.light){
      return 'assets/images/headSebha.png';
    }else{
      return 'assets/images/headSebhaDark.png';
    }
  }

}