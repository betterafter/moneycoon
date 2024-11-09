import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.white,
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      );

  static ThemeData get darkTheme => ThemeData();
}
