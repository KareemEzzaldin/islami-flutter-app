import 'package:flutter/material.dart';

class AppStyle{
  static bool isDark = false;
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkSecondary = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: lightPrimary,
      ),
    ),
    cardTheme: CardThemeData(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      elevation: 20,
      margin: EdgeInsets.all(20),
    ),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: lightPrimary,
    dividerTheme: DividerThemeData(
      color: lightPrimary,
      thickness: 3,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
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
      primary: lightPrimary,
      secondary: Color(0xffB7935F).withOpacity(0.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onPrimaryContainer: lightPrimary,
    ),
    useMaterial3: true,
  );
  static ThemeData DarkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: darkSecondary
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: darkSecondary,
      ),
    ),
    cardTheme: CardThemeData(
      surfaceTintColor: darkPrimary,
      color: darkPrimary,
      elevation: 20,
      margin: EdgeInsets.all(20),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white
      ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: darkSecondary,
    dividerTheme: DividerThemeData(
      color: darkSecondary,
      thickness: 3,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: darkSecondary,
        selectedIconTheme: IconThemeData(
          color: darkSecondary,
          size: 50,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 50,
        )
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: darkPrimary,
      secondary: darkSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onPrimaryContainer: darkSecondary,
    ),
    useMaterial3: true,
  );
}