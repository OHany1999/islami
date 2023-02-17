import 'package:flutter/material.dart';
import 'package:islami/home/Models/hadeth_model.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadethDetails';

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MYProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.headline1,

            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              border: Border.all(color: MyThemeData.colorGold,width: 2),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) => Text(
                args.content[index],
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
