import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SebhaScreen extends StatelessWidget {
  static const String routeName = 'sebha';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MYProvider>(context);
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 180,
              alignment: Alignment(0.13, -0.8),
              child: Image.asset(provider.HeadsebhaImage()),
            ),
            Container(
              height: 350.0,
              alignment: Alignment(0.0, 0.5),
              child: Image.asset(provider.BodysebhaImage()),
            ),
          ],
        ),
        Text(
          AppLocalizations.of(context)!.numberPraises,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 20.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${provider.number}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 25.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.onError),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.onError,
                ),
              ),
            ),
          ),
          onPressed: () {
            provider.ChangeTasebhNumber();
          },
          child: Text(
            provider.Tasebh,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
