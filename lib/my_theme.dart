// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static const Color primaryDarkColor = Color.fromRGBO(15, 20, 36, 1.0);
  static const Color OnprimaryDarkColor = Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: colorGold,
    colorScheme: ColorScheme(
      primary:colorGold,
      onPrimary:colorBlack ,
      error: Colors.red,
      onError: Colors.white,
      surface: colorGold,
      onSurface: Colors.white,
      background: Colors.transparent,
      onBackground: colorBlack,
      secondary: Colors.brown,
      onSecondary: Colors.white,
      brightness: Brightness.light,

    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorBlack),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorBlack,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(fontSize: 25.0,color: MyThemeData.colorGold,),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryDarkColor,
    colorScheme: ColorScheme(
      primary:primaryDarkColor,
      onPrimary:OnprimaryDarkColor ,
      error: Colors.red,
      onError: Colors.white,
      surface: primaryDarkColor,
      onSurface: Colors.white,
      background: Colors.transparent,
      onBackground: OnprimaryDarkColor,
      secondary: primaryDarkColor,
      onSecondary: OnprimaryDarkColor,
      brightness: Brightness.dark,

    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(fontSize: 25.0,color: MyThemeData.OnprimaryDarkColor,),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      selectedItemColor: OnprimaryDarkColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
