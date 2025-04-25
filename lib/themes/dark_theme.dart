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
      ),
      colorScheme: const ColorScheme.dark(
        primary: Colors.blue,
        background: Colors.black, // Optional: Set a dark background color
        onBackground: Colors.white, // Text color on the background
      ),
    );
  }
}
