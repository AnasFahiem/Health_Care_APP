import 'package:fittech_app/data/posts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetpost extends StatelessWidget {
  const BottomSheetpost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 20, 20, 20),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.25,
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
        ],
      ),
    );
  }

  void _removePost() {
    posts.removeAt(posts.indexOf(this));
  }
}
