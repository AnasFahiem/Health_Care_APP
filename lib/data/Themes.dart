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
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.tealAccent,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
      displayLarge: TextStyle(
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
