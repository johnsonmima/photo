// ************************************************
// Desc:  Returns MaterialApp
//************************************************
import 'package:flutter/material.dart';
// constant
import 'package:photo/util/constant.dart';
// screens
import 'package:photo/screens/on_boarding/on_boarding_screen.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // set theme mode to light since I don't have a design for dark mode
      themeMode: ThemeMode.light,
      // theme color colorScheme for dark and light mode
      theme: ThemeData(colorScheme: kColorSchemeLightMode),
      initialRoute: OnBoardingScreen.routeName,
      routes: {
        OnBoardingScreen.routeName : (context) => const OnBoardingScreen()
      },
    );
  }
}
