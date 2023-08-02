import 'package:flutter/material.dart';
import '../data/Categories.dart';

class GridSearchScreen extends StatelessWidget {
  const GridSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          mainAxisExtent: 150),
      itemCount: categories.length,
      itemBuilder: (context, index) => categories[index],
    );
  }
}
