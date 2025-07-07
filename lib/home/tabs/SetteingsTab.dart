import 'package:flutter/material.dart';
import 'package:islami_ap/home/LanguageBottomSheet.dart';
import 'package:islami_ap/home/ThemeBottomSheet.dart';
import 'package:islami_ap/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/SettingsProvider.dart';

class Setteingstab extends StatelessWidget {
  const Setteingstab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context, builder:(context) => Languagebottomsheet(),);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                settingsProvider.language == "ar"
                    ?"العربية"
                    :"English",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18  ,
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context, builder:(context)=> Themebottomsheet(),);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                settingsProvider.themeMode == ThemeMode.dark
                    ?"Dark"
                    :"Light",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
