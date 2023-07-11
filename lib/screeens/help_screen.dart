import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("For More Designs Contact Me At:"),
        Row(
          children: [Icon(FontAwesomeIcons.mailchimp)],
        )
      ],
    ));
  }
}
