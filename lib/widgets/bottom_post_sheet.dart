import 'package:fittech_app/data/fav_posts.dart';
import 'package:fittech_app/data/posts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetpost extends StatefulWidget {
  const BottomSheetpost({
    super.key,
  });

  @override
  State<BottomSheetpost> createState() => _BottomSheetpostState();
}

class _BottomSheetpostState extends State<BottomSheetpost> {
  Icon _icon = const Icon(
    Icons.star_border_outlined,
    color: Colors.teal,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 20, 20, 20),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.29,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.edit,
              color: Colors.teal,
            ),
            title: Text(
              "Edit Post",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              _removePost();
            },
            leading: const Icon(
              Icons.delete,
              color: Colors.teal,
            ),
            title: Text(
              "Delete Post",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(
              Icons.cancel,
              color: Colors.teal,
            ),
            title: Text(
              "Cancel",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                _icon = _icon = const Icon(
                  Icons.star,
                  color: Colors.teal,
                );
                favs.add(posts[0]);
              });
            },
            leading: _icon,
            title: Text(
              "Add to Favourites",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _removePost() {
    setState(() {
      posts.removeAt(posts.indexOf(posts[0]));
    });
  }
}
