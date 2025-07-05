import 'package:flutter/material.dart';
import 'package:islami_ap/ahadeth_details/AhadethDetailsScreen.dart';
import 'package:islami_ap/home/home_screen.dart';
import 'package:islami_ap/quran_details/QuranDetailsScreen.dart';
import 'package:islami_ap/style/AppStyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //comment
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.DarkTheme,
      themeMode: AppStyle.isDark
          ?ThemeMode.dark
          :ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routName:(_)=>QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_)=>AhadethDetailsScreen(),
      },
    );
  }
}
