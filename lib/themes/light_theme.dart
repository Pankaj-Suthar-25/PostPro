import 'package:flutter/material.dart';

class LightTheme {
 static ThemeData get theme {
   return ThemeData(
     primarySwatch: Colors.blue,
     brightness: Brightness.light,
     visualDensity: VisualDensity.adaptivePlatformDensity,
   );
 }
}
