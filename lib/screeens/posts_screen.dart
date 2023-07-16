import 'package:fittech_app/data/posts.dart';
import 'package:fittech_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = '/posts-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(
        name: "C. Anas Fahiem",
        image: "assets/me.jpg",
        isSwitched: false,
      ),
      appBar: AppBarWidget(
          name: "Anas Fahiem",
          scaffoldKey: _scaffoldKey,
          image: "assets/me.jpg"),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return posts[index];
          }),
    );
  }
}
