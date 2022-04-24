// ************************************************
// Desc:  On Boarding Screen
//************************************************

import 'package:flutter/material.dart';


// widgets
import 'package:photo/widgets/buttons/outline_button.dart';
import 'package:photo/widgets/buttons/secondary_button.dart';

// next screen
import 'package:photo/screens/auth/login_screen.dart';
import 'package:photo/screens/auth/register_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = '/';

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _topContainerHeight = 400;
    double _bottomContainerHeight = 120;
    // bottom container padding top, bottom, left, right
    double _bottomContainerPaddingTop = 35;
    double _bottomContainerPaddingBottom = 35;
    double _bottomContainerPaddingLeft = 15;
    double _bottomContainerPaddingRight = 15;
    // font size
    double _fontSM = 12;
    // spacing
    double _spacingSM = 3;

    return LayoutBuilder(builder: (context, constrain) {
      // set out container height
      _topContainerHeight = ((constrain.maxHeight * 88) / 100);
      _bottomContainerHeight = ((constrain.maxHeight * 12) / 100);

      // for tablet screen >= 1024
      if (constrain.maxWidth >= 1024) {
        // set out container height
        _topContainerHeight = ((constrain.maxHeight * 80) / 100);
        _bottomContainerHeight = ((constrain.maxHeight * 20) / 100);
      }


      // bottom container padding
      _bottomContainerPaddingTop = _bottomContainerHeight * 0.2;
      _bottomContainerPaddingBottom = _bottomContainerHeight * 0.3;
      _bottomContainerPaddingRight =
          _bottomContainerPaddingLeft = _bottomContainerHeight * 0.2;
      // spacing
      _spacingSM = _bottomContainerHeight * 0.08;
      // font size
      _fontSM = _bottomContainerHeight * 0.12;


      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: SizedBox(
            width: constrain.maxWidth,
            height: constrain.maxHeight,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/onboarding_background'
                          '.png'),
                    ),
                  ),
                  width: constrain.maxWidth,
                  height: _topContainerHeight,
                  child: Center(
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                SizedBox(
                  width: constrain.maxWidth,
                  height: _bottomContainerHeight,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: _bottomContainerPaddingTop,
                        bottom: _bottomContainerPaddingBottom,
                        right: _bottomContainerPaddingRight,
                        left: _bottomContainerPaddingLeft),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutLineButton(
                            onClick: () {
                              // navigate to login screen
                              Navigator.pushNamed(context, LoginScreen.routeName);
                            },
                            text: "log in",
                            fontSize: _fontSM,
                          ),
                        ),
                        SizedBox(
                          width: _spacingSM,
                        ),
                        Expanded(
                            child: SecondaryButton(
                          fontSize: _fontSM,
                          onClick: () {
                            // navigate to register screen
                            Navigator.pushNamed(context, RegisterScreen.routeName);
                          },
                          text: "register",
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
