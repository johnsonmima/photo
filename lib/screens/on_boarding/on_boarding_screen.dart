// ************************************************
// Desc:  On Boarding Screen
//************************************************

import 'package:flutter/material.dart';

// widgets
import 'package:photo/widgets/buttons/outline_button.dart';
import 'package:photo/widgets/buttons/secondary_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = '/';

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topContainerHeight = 0;
    double bottomContainerHeight = 0;
    // bottom container padding top, bottom, left, right
    double bottomContainerPaddingTop = 0;
    double bottomContainerPaddingBottom = 0;
    double bottomContainerPaddingLeft = 0;
    double bottomContainerPaddingRight = 0;
    // font size
    double fontSM = 0;
    // spacing
    double spacingSM = 0;

    return LayoutBuilder(builder: (context, constrain) {
      // set out container height
      topContainerHeight = ((constrain.maxHeight * 88) / 100);
      bottomContainerHeight = ((constrain.maxHeight * 12) / 100);
      // bottom container padding
      bottomContainerPaddingTop = bottomContainerHeight * 0.2;
      bottomContainerPaddingBottom = bottomContainerHeight * 0.3;
      bottomContainerPaddingRight =
          bottomContainerPaddingLeft = bottomContainerHeight * 0.2;
      // spacing
      spacingSM = bottomContainerHeight * 0.08;
      // font size
      fontSM = bottomContainerHeight * 0.12;

      return Scaffold(
        body: SizedBox(
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
                height: topContainerHeight,
                child: Center(
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              SizedBox(
                width: constrain.maxWidth,
                height: bottomContainerHeight,
                child: Container(
                  padding: EdgeInsets.only(
                      top: bottomContainerPaddingTop,
                      bottom: bottomContainerPaddingBottom,
                      right: bottomContainerPaddingRight,
                      left: bottomContainerPaddingLeft),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutLineButton(
                          onClick: () {},
                          text: "log in",
                          fontSize: fontSM,
                        ),
                      ),
                      SizedBox(
                        width: spacingSM,
                      ),
                      Expanded(
                          child: SecondaryButton(
                        fontSize: fontSM,
                        onClick: () {},
                        text: "register",
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
