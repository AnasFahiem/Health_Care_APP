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
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      drawer: DrawerWidget(
        name: "C. Anas Fahiem",
        image: "assets/me.jpg",
        isSwitched: false,
      ),
      appBar: AppBarWidget(
          name: "Anas Fahiem",
          scaffoldKey: _scaffoldKey,
          image: "assets/me.jpg"),
      body: posts.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/noPosts.png",
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "No Posts Yet",
                    style: TextStyle(
                      color: Color.fromARGB(153, 77, 182, 172),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return posts[index];
              }),
    );
  }
}
