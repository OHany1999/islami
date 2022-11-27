import 'package:flutter/material.dart';
import 'package:islami/home/tabs/quran/sura_view.dart';
import 'package:islami/my_theme.dart';

import '../../Models/sura_detail_model.dart';

class SuraNameItem extends StatelessWidget {
  String suraName = '';
  int index;
  SuraNameItem(this.suraName,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetails.routeName,
          arguments: SuraDetailsArgs(suraName,index),
        );
      },
      child: Text(
        textAlign: TextAlign.center,
        suraName,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(color: MyThemeData.colorBlack),
      ),
    );
  }
}
