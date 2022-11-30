import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../../providers/my_provider.dart';
import '../../Models/sura_detail_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var provider =Provider.of<MYProvider>(context);
    // عشان كل ما بيعمل setstate بbuild الwidget من اول وجديد
    // فاانا بقوله لو لقيت الlist مليانه متشغلش الfuunction تاني
    if (verses.isEmpty) {
      loadFile(args.index);
    }

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
            centerTitle: true,
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemCount: verses.length,
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: MyThemeData.colorGold,
                    indent: 29,
                    endIndent: 29,
                  ),
                  itemBuilder: (context, index) => Text(
                    verses[index],
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary, letterSpacing: 0.45,),
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      ],
    );
  }

  // بحمل الداتا اللي جواه الfiles اللي فيها السور
  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    // قسملي اللي جوه الفايل لكذا حاجة بناء علي سطر سطر
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
  // future تعني لاتنتظر حتي تاتي الداتا واكمل للسطر اللي بعده
  // void loadFile(int index) {
  //   Future<String> content = rootBundle.loadString('assets/files/${index + 1}.txt');
  //   // قسملي اللي جوه الفايل لكذا حاجة بناء علي سطر سطر
  //   List<String> lines = content.split('\n');
  //   verses = lines;
  //   setState(() {});
  // }

}
