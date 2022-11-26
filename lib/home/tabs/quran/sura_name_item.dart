import 'package:flutter/material.dart';
import 'package:islami/home/tabs/quran/sura_view.dart';

import '../../Models/sura_detail_model.dart';

class SuraNameItem extends StatelessWidget {
  String suraName = '';
  SuraNameItem(this.suraName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetails.routeName,
          arguments: SuraDetailsArgs(suraName),
        );
      },
      child: Center(
        child: Text(
          suraName,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
        ),
      ),
    );
  }
}
