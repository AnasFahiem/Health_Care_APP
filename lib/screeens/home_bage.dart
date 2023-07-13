import 'dart:ffi';

import 'package:fittech_app/widgets/app_bar.dart';
import 'package:fittech_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/post.dart';
import 'posts_screen.dart';

class HomeBage extends StatelessWidget {
  HomeBage({super.key});
  static const routeName = '/home-bage';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerWidget(
          name: "C. Anas Fahiem",
          image: "assets/me.jpg",
          isSwitched: false,
        ),
        appBar: AppBarWidget(
          name: "Anas Fahiem",
          scaffoldKey: _scaffoldKey,
          image: "assets/me.jpg",
        ),
        body: const TabBarView(
          children: [
            PostsScreen(),
            PostsScreen(),
            PostsScreen(),
            PostsScreen(),
            PostsScreen(),
          ],
        ),

        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.teal,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.teal,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.teal,
                size: 40,
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.userPlus,
                color: Colors.teal,
                size: 20,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                color: Colors.teal,
              ),
            ),
          ],
        ),

        //     BottomNavigationBar(
        //   selectedLabelStyle: GoogleFonts.roboto(
        //     textStyle: TextStyle(
        //       color: Colors.teal,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   currentIndex: 0,
        //   backgroundColor: Colors.teal,
        //   items: const [
        //     BottomNavigationBarItem(
        //       backgroundColor: Colors.teal,
        //       label: "Home",
        //       icon: Icon(
        //         Icons.home,
        //         color: Color.fromARGB(255, 26, 26, 26),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Colors.teal,
        //       label: "Search",
        //       icon: Icon(
        //         Icons.search,
        //         color: Color.fromARGB(255, 26, 26, 26),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Colors.teal,
        //       label: "Add",
        //       icon: Icon(
        //         Icons.add_box_rounded,
        //         color: Color.fromARGB(255, 26, 26, 26),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Colors.teal,
        //       label: "Profile",
        //       icon: Icon(
        //         FontAwesomeIcons.personCirclePlus,
        //         color: Color.fromARGB(255, 26, 26, 26),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Colors.teal,
        //       label: "Settings",
        //       icon: Icon(
        //         Icons.settings,
        //         color: Color.fromARGB(255, 26, 26, 26),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
