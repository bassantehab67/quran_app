import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Color(0xff242424),
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0XFFB7935F),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 36,
        ),
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ));
}
