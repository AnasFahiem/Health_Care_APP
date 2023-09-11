import 'package:fittech_app/screeens/grid_search_screen.dart';
import 'package:fittech_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({
    super.key,
  });
  static const routeName = "/search-screen";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/me.jpg"),
              backgroundColor: Colors.grey,
            ),
          ),
          title: const SearchBarWidget(),
          actions: [
            IconButton(
              icon: const Icon(Icons.filter_list_outlined),
              color: Colors.teal,
              onPressed: () {},
              iconSize: 25,
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.only(top: 15, left: 8, right: 8),
          child: Center(
            child: GridSearchScreen(),
          ),
        ));
  }
}
