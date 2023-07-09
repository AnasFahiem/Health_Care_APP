import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

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
    );
  }
}
