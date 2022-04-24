// ************************************************
// Desc:  App Main Home Screen
//************************************************

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
          body: Center(
        child: Text(
          "Home",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ));
    });
  }
}
