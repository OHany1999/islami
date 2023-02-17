import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth/hadeth_details.dart';
import 'package:islami/my_theme.dart';

import '../../Models/hadeth_model.dart';
import '../../Models/sura_detail_model.dart';

class AhdethNameItem extends StatelessWidget {
  String Name = '';
  Hadeth hadeth;
  AhdethNameItem(this.Name,this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadethDetails.routeName,
          arguments: hadeth,
        );
      },
      child: Text(
        textAlign: TextAlign.center,
        Name,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}
