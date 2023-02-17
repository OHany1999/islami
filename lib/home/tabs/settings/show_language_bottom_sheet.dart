import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MYProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.ChangeLanguage('en');
              //عشان يقفل الbottom sheet
              Navigator.pop(context);
            },
            child: languageItem(context, AppLocalizations.of(context)!.english, provider.language == 'en'? true: false),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: (){
              provider.ChangeLanguage('ar');
              //عشان يقفل الbottom sheet
              Navigator.pop(context);
            },
            child: languageItem(context, AppLocalizations.of(context)!.arabic, provider.language == 'ar'? true: false),
          ),
        ],
      ),
    );
  }

  Widget languageItem(BuildContext context, String text, bool isSelected) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.onPrimary),
          ),
          Icon(Icons.done,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).colorScheme.onPrimary),
        ],
      );
}
