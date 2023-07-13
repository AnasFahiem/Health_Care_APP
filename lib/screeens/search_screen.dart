import 'package:fittech_app/screeens/grid_search_screen.dart';
import 'package:fittech_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/me.jpg"),
            backgroundColor: Colors.grey,
          ),
          title: SearchBarWidget(),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list_outlined),
              color: Colors.teal,
              onPressed: () {},
              iconSize: 25,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
          child: Center(
            child: GridSearchScreen(),
          ),
        ));
  }
}
