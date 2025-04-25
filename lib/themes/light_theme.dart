import 'package:flutter/material.dart';

class LightTheme {
 static ThemeData get theme {
   return ThemeData(
     primarySwatch: Colors.blue,
     scaffoldBackgroundColor: Colors.white,
     brightness: Brightness.light,
     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFF5F5F5),
          unselectedItemColor: Color(0xFF777777), // Color for unselected items
          selectedItemColor: Colors.black, // Color for selected items
          type: BottomNavigationBarType.fixed, // Type of navigation bar
          selectedIconTheme: IconThemeData(size: 24), // Icon theme for selected items
          unselectedIconTheme: IconThemeData(size: 24), // Icon theme for unselected items
          selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500), // Style for selected labels
          unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), // Style for unselected labels
          showSelectedLabels: true, // Show labels for selected items
          showUnselectedLabels: true, // Show labels for unselected items
      ),
     visualDensity: VisualDensity.adaptivePlatformDensity,

   );
 }
}
