import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../my_theme.dart';

class AhadethScreen extends StatelessWidget {

  static const String routeName = 'ahadeth';

  @override
  Widget build(BuildContext context) {
    LoadHadethFile();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/ahadeth_header_bg.png'),
        Divider(color: MyThemeData.colorGold,thickness: 2,),
        Text('Ahadeth',textAlign: TextAlign.center,style:Theme.of(context).textTheme.subtitle1?.copyWith(color: MyThemeData.colorBlack,) ,),
        Divider(color: MyThemeData.colorGold,thickness: 2,),
      ],
    );
  }

  void LoadHadethFile(){
    Future<String> content =  rootBundle.loadString('assets/files/ahadeth .txt');
    // بعد ماالداتا اللي جوه الcontent تيجي اعملي كذا
    content.then((value){
      List<String> AllAhdeth = value.split('#');
      String hadeth1=AllAhdeth[0];
      List<String>HadethLine=hadeth1.split('\n');
      String title = HadethLine[0];
      print(title);
    });
  }
}
