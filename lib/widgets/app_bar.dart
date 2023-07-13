import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {super.key,
      required this.name,
      required this.scaffoldKey,
      required this.image});
  Size get preferredSize => const Size.fromHeight(60);
  final String image;
  final String name;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Icon(Icons.verified, color: Colors.yellow, size: 15)
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.facebookMessenger,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
