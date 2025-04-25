import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      primarySwatch: Colors.grey,
      brightness: Brightness.dark, // Use dark brightness
      scaffoldBackgroundColor: Colors.black, // Consider a dark background color
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor:
        Color(0xFF1E1E1E), // Dark gray color for bottom navigation bar
        unselectedItemColor: Color(0xFF999999),
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 24),
        unselectedIconTheme: IconThemeData(size: 24),
        selectedLabelStyle: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400),
        showSelectedLabels: true,

      ),
      colorScheme: const ColorScheme.dark(
        primary: Colors.blue,
        background: Colors.black, // Optional: Set a dark background color
        onBackground: Colors.white, // Text color on the background
        secondary: Colors.blueAccent,
        surface: Colors.black38,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onError: Colors.white,
        onSurface: Colors.white,
        error: Colors.red,
      ),
    );
  }
}
