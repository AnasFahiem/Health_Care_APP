import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemesClass {
  static ThemeData darkTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.teal,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white70,
        fontSize: 20,
        fontFamily: GoogleFonts.antic().fontFamily,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      bodyLarge: TextStyle(
        color: Colors.white70,
        fontSize: 20,
        fontFamily: GoogleFonts.roboto().fontFamily,
        fontWeight: FontWeight.bold,
      ),
    ),
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 4, 156, 103),
      background: Colors.teal,
      brightness: Brightness.dark,
      primary: Colors.teal,
      secondary: const Color.fromARGB(255, 4, 156, 103),
      surface: Colors.white70,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    hintColor: Colors.tealAccent,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.tealAccent,
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
      headline1: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(
        color: Colors.black,
      ),
      headline3: TextStyle(
        color: Colors.black,
      ),
      headline4: TextStyle(
        color: Colors.black,
      ),
      headline5: TextStyle(
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        color: Colors.black,
      ),
      subtitle2: TextStyle(
        color: Colors.black,
      ),
      button: TextStyle(
        color: Colors.black,
      ),
      caption: TextStyle(
        color: Colors.black,
      ),
      overline: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
