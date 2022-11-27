import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/home/tabs/quran/quran.dart';
import 'package:islami/home/tabs/radio.dart';
import 'package:islami/home/tabs/sebha.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/home/tabs/quran/sura_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranScreen.routeName:(context)=>QuranScreen(),
        RadioScreen.routeName:(context)=>RadioScreen(),
        SebhaScreen.routeName:(context)=>SebhaScreen(),
        AhadethScreen.routeName:(context)=>AhadethScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    ),
  );
}
