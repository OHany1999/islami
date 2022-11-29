import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/home/tabs/quran/quran.dart';
import 'package:islami/home/tabs/radio/radio.dart';
import 'package:islami/home/tabs/sebha.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget>tabs=[
    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami,style: Theme.of(context).textTheme.headline1,),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index){
              currentIndex = index;
              setState(() {

              });
            },
            currentIndex: currentIndex,
            items: [
              // في مشكلة في flutter اول ماالicons بتكتر لازم تدي لواحد فيهم نفس لون الbackground اللي عندهم اصلا دي مشكلة مشهورة في flutter
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png'),),label: 'quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),),label: 'radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),),label: 'sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),),label: 'ahadeth'),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

}
