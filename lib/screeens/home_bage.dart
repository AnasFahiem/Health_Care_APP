import 'package:fittech_app/widgets/app_bar.dart';
import 'package:fittech_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          drawer: const DrawerWidget(),
          appBar: AppBarWidget(
            name: "Anas",
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
                  Icons.add_box_rounded,
                  color: Colors.teal,
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.personCirclePlus,
                  color: Colors.teal,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.teal,
                ),
              ),
            ],
          )

          //  BottomNavigationBar(items: const [
          //   BottomNavigationBarItem(
          //     label: "",
          //     icon: Icon(
          //       Icons.home,
          //       color: Color.fromARGB(255, 26, 26, 26),
          //     ),
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.search,
          //       color: Color.fromARGB(255, 26, 26, 26),
          //     ),
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.add_box_rounded,
          //       color: Color.fromARGB(255, 26, 26, 26),
          //     ),
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       FontAwesomeIcons.personCirclePlus,
          //       color: Color.fromARGB(255, 26, 26, 26),
          //     ),
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.settings,
          //       color: Color.fromARGB(255, 26, 26, 26),
          //     ),
          //   ),
          // ]),
          ),
    );
  }
}
