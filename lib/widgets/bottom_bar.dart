// import 'package:fittech_app/screeens/add_screen.dart';
// import 'package:fittech_app/screeens/home_bage.dart';
// import 'package:fittech_app/screeens/posts_screen.dart';
// import 'package:fittech_app/screeens/search_screen.dart';
// import 'package:flutter/material.dart';

// class BottomBar extends StatefulWidget {
//   BottomBar({super.key});

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   @override
//   Widget build(BuildContext context) {
//     var navigator = Navigator.of(context);

//     return NavigationBar(
//       destinations: const [
//         NavigationDestination(
//           icon: Icon(Icons.home_outlined),
//           selectedIcon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.search_outlined),
//           selectedIcon: Icon(Icons.search),
//           label: 'Search',
//         ),
//         NavigationDestination(
//           icon: Icon(
//             Icons.add_circle_outline,
//           ),
//           selectedIcon: Icon(Icons.add_circle),
//           label: 'Add',
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.favorite_border_outlined),
//           selectedIcon: Icon(Icons.favorite),
//           label: 'Favorite',
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.person_outline),
//           selectedIcon: Icon(Icons.person),
//           label: 'Profile',
//         ),
//       ],
//       labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//       animationDuration: const Duration(milliseconds: 150),
//       backgroundColor: Colors.transparent,
//       selectedIndex: HomeBage().index,
//       onDestinationSelected: (index) {
//         setState(() {
//           HomeBage().index = index;
//         });
//       },
//       height: 50,
//       indicatorColor: Colors.teal,
//     );
//   }
// }
