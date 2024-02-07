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
        title: Text(
          "Favourites",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.teal,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
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
                const SizedBox(
                  height: 120,
                ),
                Image.asset(
                  "assets/sad-heart (1).png",
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Text(
                  "No Favourites Yet",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(153, 77, 182, 172),
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
