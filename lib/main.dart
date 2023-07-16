import 'package:fittech_app/screeens/help_screen.dart';
import 'package:fittech_app/screeens/login_screen.dart';
import 'package:fittech_app/screeens/home_bage.dart';
import 'package:fittech_app/screeens/posts_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
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
        textTheme:
            GoogleFonts.alikeAngularTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Color.fromARGB(255, 26, 26, 26),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 4, 156, 103),
          background: Colors.teal,
          brightness: Brightness.dark,
          primary: Colors.teal,
          secondary: Color.fromARGB(255, 4, 156, 103),
          surface: Colors.white70,
        ),
      ),
      home: LoginScreen(),
      routes: {
        HomeBage.routeName: (ctx) => HomeBage(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        PostsScreen.routeName: (ctx) => PostsScreen(),
        HelpScreen.routeName: (ctx) => HelpScreen(),
      },
    );
  }
}
