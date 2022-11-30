import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/home/tabs/ahadeth/hadeth_details.dart';
import 'package:islami/home/tabs/quran/quran.dart';
import 'package:islami/home/tabs/radio/radio.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/home/tabs/quran/sura_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

import 'home/tabs/sebha/sebha.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=>MYProvider(),
      child: MyApplication(),
    ),
  );
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MYProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      locale: Locale(provider.language),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranScreen.routeName:(context)=>QuranScreen(),
        RadioScreen.routeName:(context)=>RadioScreen(),
        SebhaScreen.routeName:(context)=>SebhaScreen(),
        AhadethScreen.routeName:(context)=>AhadethScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadethDetails.routeName:(context)=>HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
