import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/Models/hadeth_model.dart';
import 'package:islami/home/tabs/quran/sura_name_item.dart';

import '../../../my_theme.dart';
import '../quran/sura_view.dart';
import 'ahdeth_name_item.dart';

class AhadethScreen extends StatefulWidget {
  static const String routeName = 'ahadeth';

  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<Hadeth> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if(Ahadeth.isEmpty){
      LoadHadethFile();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/ahadeth_header_bg.png'),
        Divider(
          color: MyThemeData.colorGold,
          thickness: 2,
        ),
        Text(
          'Ahadeth',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: MyThemeData.colorBlack,
              ),
        ),
        Divider(
          color: MyThemeData.colorGold,
          thickness: 2,
        ),
        Expanded(
          child:Ahadeth.isEmpty? Center(child: CircularProgressIndicator()): ListView.separated(
            itemBuilder: (context, index) => AhdethNameItem(Ahadeth[index].title,Ahadeth[index]),
            separatorBuilder: (context,index)=>Divider(
              color: MyThemeData.colorGold,
              indent: 30,
              endIndent: 30,
            ),
            itemCount: Ahadeth.length,
          ),
        ),
      ],
    );
  }

  void LoadHadethFile() {
    Future<String> content = rootBundle.loadString('assets/files/ahadeth .txt');
    // بعد ماالداتا اللي جوه الcontent تيجي اعملي كذا
    content.then((value) {
      // trem تقوم بحذف ال spaces الموجودة علي يمين الحديث وشماله
      List<String> AllAhdeth = value.trim().split('#');

      for (int i = 0; i < AllAhdeth.length; i++) {
        String hadeth = AllAhdeth[i];
        print(hadeth);
        List<String> HadethLine = hadeth.trim().split('\n');
        String title = HadethLine[0];
        HadethLine.removeAt(0);
        Hadeth hadethData = Hadeth(title, HadethLine);
        Ahadeth.add(hadethData);
        setState(() {

        });
      }
    });
  }
}
