import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFF5F5F5),
          unselectedItemColor: Color(0xFF777777),
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 24),
          unselectedIconTheme: IconThemeData(size: 24),
          selectedLabelStyle: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500),
          unselectedLabelStyle: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        surface: Colors.black38,
        onSurface: Colors.white,
        secondary: Colors.blueAccent,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onError: Colors.white,
        error: Colors.red,
      )
    );
  }
}
