import 'package:fittech_app/data/fav_posts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: Colors.teal,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Favourites",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.star,
              color: Colors.teal,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
          itemCount: favs.length,
          itemBuilder: (context, index) {
            return favs[index];
          }),
    );
  }
}
