// ************************************************
// Desc:  Second step of the registration process
//************************************************

import 'package:flutter/material.dart';

// google font
import 'package:google_fonts/google_fonts.dart';

// mixin
import 'package:photo/mixin/input_field_mixin.dart';
//widget
import 'package:photo/screens/auth/privacy_policy_term_of_service.dart';
import 'package:photo/widgets/buttons/secondary_button.dart';
// next screen
import 'package:photo/screens/home/home_screen.dart';

class CreateUserNameScreen extends StatefulWidget {
  static const String routeName = '/createUserName';

  const CreateUserNameScreen({Key? key}) : super(key: key);

  @override
  _CreateUserNameScreenState createState() => _CreateUserNameScreenState();
}

class _CreateUserNameScreenState extends State<CreateUserNameScreen>
    with InputFieldMixin {
  // current value of the TextField.
  final _controller = TextEditingController();

  // padding left and right
  double _paddingLeft = 10;
  double _paddingRight = 10;

  // text field padding
  double _textFieldPadding = 20;

  // font size
  double _fontLG = 20;
  double _fontSM = 5;
  double _fontMD = 10;

  // spacing
  double _spacingLG = 20;
  double _spacingMD = 10;
  double _spacingSM = 10;

  // submit button height
  double _submitButtonHeight = 50;

  // save user inputs
  late String _username;

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      // set variables for mobile and tablets

      _paddingRight = constrain.maxWidth * 0.05;
      _paddingLeft = constrain.maxWidth * 0.05;

      // text field padding
      _textFieldPadding = constrain.maxHeight * 0.03;

      // set font Size
      _fontLG = constrain.maxWidth * 0.1;
      _fontMD = constrain.maxWidth * 0.04;
      _fontSM = constrain.maxWidth * 0.03;

      // spacing
      _spacingLG = constrain.maxHeight * 0.05;
      _spacingSM = constrain.maxHeight * 0.02;
      _spacingMD = constrain.maxHeight * 0.04;

      // submit button height
      _submitButtonHeight = constrain.maxHeight * 0.07;

      // for larger screens > 744 [Tablets]
      if (constrain.maxWidth > 744) {
        // submit button height
        _submitButtonHeight = constrain.maxHeight * 0.09;
        // change the spacing MD
        _spacingMD = constrain.maxHeight * 0.07;
        // font MD and SM && LG

        _fontLG = constrain.maxWidth * 0.08;
        _fontMD = constrain.maxHeight * 0.03;
        _fontSM = constrain.maxWidth * 0.02;
       // text field padding
        _textFieldPadding = constrain.maxHeight * 0.04;
      }

      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          elevation: 0,
        ),

        body: Padding(
          padding: EdgeInsets.only(
            right: _paddingRight,
            left: _paddingLeft,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: _fontLG)),
                ),
                SizedBox(
                  height: _spacingLG,
                ),
                // email field
                TextFormField(
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: _fontMD),
                  cursorColor: Theme.of(context).colorScheme.onPrimary,
                  keyboardType: TextInputType.emailAddress,
                  decoration: squareInputFieldDecorator(
                      hint: "Create username",
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: _fontMD,
                      padding: _textFieldPadding),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username is required';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _username = value;
                  },
                  onSaved: (value) {
                    // on saved
                    _username = value ?? '';
                  },
                ),

                SizedBox(
                  height: _spacingSM,
                ),
                SizedBox(
                  width: constrain.maxWidth,
                  height: _submitButtonHeight,
                  child: SecondaryButton(
                    onClick: () {
                      // to home screen
                      Navigator.pushReplacementNamed(context, HomeScreen
                          .routeName);
                    },
                    fontSize: _fontMD,
                    text: 'Sign up',
                  ),
                ),
                SizedBox(
                  height: _spacingMD,
                ),
               PrivacyPolicyLinkAndTermsOfService(fontSize: _fontSM,)
              ],
            ),
          ),
        ),
      );
    });
  }
}
