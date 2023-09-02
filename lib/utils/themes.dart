import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemes {

  static ThemeMode getThemeMode(){
    return ThemeMode.system;
  }

  static ThemeData lightTheme(BuildContext context){
    return ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primarySwatch: Colors.deepPurple,
    );
  }
  static ThemeData darkTheme(BuildContext context){
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}