import 'package:flutter/material.dart';

import '../../Models/sura_detail_model.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'suraDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
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
            centerTitle: true,
            title: Text(args.suraName,style: Theme.of(context).textTheme.headline1,),
          ),
        ),
      ],
    );
  }
}

