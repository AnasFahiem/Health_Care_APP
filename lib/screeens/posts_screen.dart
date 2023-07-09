import 'package:flutter/material.dart';

import '../widgets/post.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return PostWidget(
                name: "C.Ahmed",
                image: "assets/person5.png",
                subtitle: "CIT",
              );
            }),
      ),
    );
  }
}
