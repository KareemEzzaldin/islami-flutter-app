import 'package:flutter/material.dart';
import 'package:islami_ap/home/SelectedItem.dart';
import 'package:islami_ap/home/unSeletctedItem.dart';
import 'package:islami_ap/providers/SettingsProvider.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatelessWidget {
  const Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(settingsProvider.themeMode == ThemeMode.dark
              ?"Dark"
              :"Light"),
          SizedBox(height: 10,),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(
                    settingsProvider.themeMode == ThemeMode.dark
                        ?ThemeMode.light
                        :ThemeMode.dark
                );
              },
              child: UnSeletcteditem(settingsProvider.themeMode == ThemeMode.dark
                  ?"Light"
                  :"Dark"))
        ],
      ),
    );
  }
}
