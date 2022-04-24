// ************************************************
// Desc:  Returns MaterialApp
//************************************************
import 'package:flutter/material.dart';
// constant
import 'package:photo/util/constant.dart';
// screens
import 'package:photo/screens/on_boarding/on_boarding_screen.dart';
// auth
import 'package:photo/screens/auth/login_screen.dart';
import 'package:photo/screens/auth/register_screen.dart';
import 'package:photo/screens/auth/create_username_screen.dart';
// home
import 'package:photo/screens/home/home_screen.dart';



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
        OnBoardingScreen.routeName : (context) => const OnBoardingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName:(context) => const RegisterScreen(),
        CreateUserNameScreen.routeName:(context) => const
        CreateUserNameScreen(),
        HomeScreen.routeName : (context) => const HomeScreen(),
      },
    );
  }
}
