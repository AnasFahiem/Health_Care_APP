import 'package:fittech_app/screeens/help_screen.dart';
import 'package:fittech_app/screeens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DrawerWidget extends StatefulWidget {
  DrawerWidget(
      {super.key,
      required this.name,
      required this.image,
      required this.isSwitched});
  final String name;
  final String image;
  bool isSwitched = false;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      // Border(
      //   top: BorderSide(color: Colors.teal),
      //   bottom: BorderSide(color: Colors.teal),
      //   right: BorderSide(color: Colors.teal),
      // ),

      backgroundColor: Colors.grey[900],
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.125,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                // bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Fittech",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  Icon(
                    FontAwesomeIcons.heartPulse,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.105,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundImage: AssetImage(widget.image),
                      backgroundColor: Colors.teal,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                Row(
                  children: [
                    Text(widget.name,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    const Icon(Icons.verified, color: Colors.yellow, size: 15)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "View Profile",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        const Icon(FontAwesomeIcons.dumbbell,
                            color: Colors.grey, size: 10)
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 86),
                  child: Divider(
                    color: Colors.teal,
                    thickness: 1,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Groups",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Icon(FontAwesomeIcons.users,
                            color: Colors.teal, size: 17)
                      ],
                    ),
                  ),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.only(left: 8),
                  inactiveThumbColor: Colors.teal,
                  title: Text(
                    "Dark Mode",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  value: widget.isSwitched,
                  onChanged: (value) {
                    setState(() {
                      widget.isSwitched = value;
                    });
                  },
                  activeColor: Colors.teal,
                  inactiveTrackColor: Colors.grey,
                ),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Icon(FontAwesomeIcons.list,
                            color: Colors.teal, size: 17)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Progress",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Icon(FontAwesomeIcons.barsProgress,
                            color: Colors.teal, size: 17)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.34),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HelpScreen.routeName);
                      },
                      child: Text(
                        "Help",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: Text(
                        "Log Out",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
