import 'package:fittech_app/data/fav_posts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.teal,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Favourites",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.star,
              color: Colors.teal,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                favs.clear();
              });
            },
            icon: const Icon(
              Icons.clear_sharp,
              color: Colors.teal,
            ),
          ),
        ],
      ),
      body: favs.isEmpty
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                ),
                Container(
                  child: Image.asset("assets/sad-heart1.png"),
                  height: 250,
                  width: 250,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "No Favourites Yet",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: const Color.fromARGB(142, 77, 182, 172),
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )
              // Text(
              //   "No Favourites Yet",
              //   style: GoogleFonts.roboto(
              //     textStyle: TextStyle(
              //       color: const Color.fromARGB(142, 77, 182, 172),
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              )
          : ListView.builder(
              itemCount: favs.length,
              itemBuilder: (context, index) {
                return favs[index];
              }),
    );
  }
}
