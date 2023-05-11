import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    //canvasColor: lightPrimary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //backgroundColor: lightPrimary,
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
      subtitle2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData();
}
