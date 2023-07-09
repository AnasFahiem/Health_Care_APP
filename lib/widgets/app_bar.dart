import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {super.key,
      required this.name,
      required this.scaffoldKey,
      required this.image});
  Size get preferredSize => const Size.fromHeight(50);
  final String image;
  final String name;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          name,
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          scaffoldKey.currentState!.openDrawer();
        },
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
          backgroundColor: Colors.grey,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidMessage,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
