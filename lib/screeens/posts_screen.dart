import 'package:fittech_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/post.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarWidget(
          name: "Anas Fahiem",
          scaffoldKey: _scaffoldKey,
          image: "assets/me.jpg"),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: PostWidget(
                name: "C.Adham Elto5y",
                image: "assets/to5y.jpg",
                subtitle: "CIT",
                post:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              ),
            );
          }),
    );
  }
}
