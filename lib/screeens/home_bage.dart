import 'package:fittech_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeBage extends StatelessWidget {
  HomeBage({super.key});
  static const routeName = '/home-bage';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      appBar: AppBarWidget(name: "Anas", scaffoldKey: _scaffoldKey),
    );
  }
}
