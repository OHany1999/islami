import 'package:flutter/material.dart';
import 'package:islami/home/Models/hadeth_model.dart';
import 'package:islami/my_theme.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.headline1,

            ),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) => Text(
              args.content[index],
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: MyThemeData.colorBlack,
              ),
              textAlign: TextAlign.center,
            ),
            itemCount: args.content.length,
          ),
        ),
      ],
    );
  }
}
