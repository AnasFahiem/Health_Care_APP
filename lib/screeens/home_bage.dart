import 'package:fittech_app/screeens/add_screen.dart';
import 'package:fittech_app/screeens/search_screen.dart';
import 'package:fittech_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/bottom_bar.dart';
import 'posts_screen.dart';

class HomeBage extends StatefulWidget {
  HomeBage({super.key});
  static const routeName = '/home-bage';

  @override
  State<HomeBage> createState() => _HomeBageState();
}

class _HomeBageState extends State<HomeBage> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 0;

  final List<Widget> screens = [
    PostsScreen(),
    const SearchScreen(),
    const AddScreen(),
    PostsScreen(),
    PostsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      drawer: DrawerWidget(
        name: "C. Anas Fahiem",
        image: "assets/me.jpg",
        isSwitched: false,
      ),
      // appBar: AppBarWidget(
      //   name: "Anas Fahiem",
      //   scaffoldKey: _scaffoldKey,
      //   image: "assets/me.jpg",
      // ),
      body: screens[index],
      //TabBarView(
      //   children: [
      //     PostsScreen(),
      //     const SearchScreen(),
      //     AddScreen(),
      //     PostsScreen(),
      //     PostsScreen(),
      //   ],
      // ),

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(
              Icons.add_circle_outline,
            ),
            selectedIcon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.person_add_outlined),
            selectedIcon: Icon(Icons.person_add),
            label: 'Freinds',
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: Colors.transparent,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
        height: 50,
        indicatorColor: Colors.teal,
      ),
      //  const TabBar(
      //   indicatorSize: TabBarIndicatorSize.label,
      //   indicatorColor: Colors.teal,
      //   tabs: [
      //     Tab(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.teal,
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(
      //         Icons.search,
      //         color: Colors.teal,
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(
      //         Icons.add_box_outlined,
      //         color: Colors.teal,
      //         size: 40,
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(
      //         FontAwesomeIcons.userPlus,
      //         color: Colors.teal,
      //         size: 20,
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(
      //         Icons.settings,
      //         color: Colors.teal,
      //       ),
      //     ),
      //   ],
      // ),

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
    );
  }
}
