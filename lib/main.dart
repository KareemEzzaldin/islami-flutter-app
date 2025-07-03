import 'package:flutter/material.dart';
import 'package:islami_ap/ahadeth_details/AhadethDetailsScreen.dart';
import 'package:islami_ap/home/home_screen.dart';
import 'package:islami_ap/quran_details/QuranDetailsScreen.dart';

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
      theme: ThemeData(
        cardTheme: CardThemeData(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 20,
          margin: EdgeInsets.all(20),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        dividerColor: Color(0xffB7935F),
        dividerTheme: DividerThemeData(
          color: Color(0xffB7935F),
          thickness: 3,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 50,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 50,
          )
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routName:(_)=>QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_)=>AhadethDetailsScreen(),
      },
    );
  }
}
