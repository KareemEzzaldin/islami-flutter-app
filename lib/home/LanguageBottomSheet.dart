import 'package:flutter/material.dart';
import 'package:islami_ap/home/SelectedItem.dart';
import 'package:islami_ap/home/unSeletctedItem.dart';
import 'package:islami_ap/providers/SettingsProvider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(
              settingsProvider.language == "ar"
                  ?"العربية"
                  :"English"),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                settingsProvider.changeLanguage(
                  settingsProvider.language == "ar"
                      ?"en"
                      :"ar");
            },
            child: UnSeletcteditem(
                settingsProvider.language == "ar"
                    ?"English"
                    :"العربية"),
          ),
        ],
      ),
    );
  }
}
