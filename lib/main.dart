import 'package:fittech_app/data/Themes.dart';
import 'package:fittech_app/screeens/help_screen.dart';
import 'package:fittech_app/screeens/login_screen.dart';
import 'package:fittech_app/screeens/home_bage.dart';
import 'package:fittech_app/screeens/posts_screen.dart';
import 'package:flutter/material.dart';

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
      themeMode: ThemeMode.system,
      theme: ThemesClass.lightTheme,
      darkTheme: ThemesClass.darkTheme,
      home: const LoginScreen(),
      routes: {
        HomeBage.routeName: (ctx) => const HomeBage(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        PostsScreen.routeName: (ctx) => PostsScreen(),
        HelpScreen.routeName: (ctx) => HelpScreen(),
      },
    );
  }
}
