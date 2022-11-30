import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/home/tabs/quran/quran.dart';
import 'package:islami/home/tabs/radio/radio.dart';
import 'package:islami/home/tabs/sebha/sebha.dart';
import 'package:islami/home/tabs/settings/settings.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

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
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MYProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackground(),
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
            //بتحل مشكلة الicons اللي بتخلي الاسم ميظهرش واicon تختفي
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
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

}
