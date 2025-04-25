import 'package:flutter/material.dart';

class LightTheme {
 static ThemeData get theme {
   return ThemeData(
     primarySwatch: Colors.blue,
     scaffoldBackgroundColor: Colors.white,
     brightness: Brightness.light,
     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFF5F5F5),
          unselectedItemColor: Color(0xFF777777),
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,

          
          
      ),
     visualDensity: VisualDensity.adaptivePlatformDensity,

   );
 }
}
