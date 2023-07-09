import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {super.key, required this.name, required this.scaffoldKey});
  Size get preferredSize => const Size.fromHeight(60.0);
  final String name;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IconButton(
            //   onPressed: () {
            //     scaffoldKey.currentState!.openDrawer();
            //   },
            //   icon: Icon(FontAwesomeIcons.faceGrinBeamSweat),
            //   color: Colors.black,
            // ),
            GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const CircleAvatar(
                backgroundColor: Colors.teal,
                backgroundImage: AssetImage("assets/person5.png"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.antic().fontFamily,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidMessage,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
