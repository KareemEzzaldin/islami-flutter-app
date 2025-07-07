import 'package:flutter/material.dart';
import 'package:islami_ap/ahadeth_details/AhadethDetailsScreen.dart';
import 'package:islami_ap/home/home_screen.dart';
import 'package:islami_ap/providers/SettingsProvider.dart';
import 'package:islami_ap/quran_details/QuranDetailsScreen.dart';
import 'package:islami_ap/style/AppStyle.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';

void main() {
  // new version
  runApp(ChangeNotifierProvider(
    create: (context) => SettingsProvider() ,
      child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //comment
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.DarkTheme,
      themeMode: settingsProvider.themeMode,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(settingsProvider.language),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routName:(_)=>QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_)=>AhadethDetailsScreen(),
      },
    );
  }
}
