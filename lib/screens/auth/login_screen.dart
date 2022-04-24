// ************************************************
// Desc:  Log in Screen
//************************************************

import 'package:flutter/material.dart';

// google font
import 'package:google_fonts/google_fonts.dart';

// mixin
import 'package:photo/mixin/input_field_mixin.dart';
import 'package:photo/widgets/buttons/secondary_button.dart';
// next screen
import 'package:photo/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with InputFieldMixin {
  // current value of the TextField.
  final _controller = TextEditingController();

  // padding left and right
  double _paddingLeft = 10;
  double _paddingRight = 10;
  
  // text field padding
  double _textFieldPadding = 20;


  // font size
  double _fontLG = 20;
  double _fontSM = 10;

  // spacing
  double _spacingLG = 20;
  double _spacingMD = 10;

  // submit button height
  double _submitButtonHeight = 50;

  // save user inputs
  late String _email;
  late String _password;

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
      _fontSM =  constrain.maxWidth * 0.04;

      // spacing
      _spacingLG = constrain.maxHeight * 0.05;
      _spacingMD = constrain.maxHeight * 0.02;

      // submit button height
      _submitButtonHeight = constrain.maxHeight * 0.07;


      // for larger screens [Tablets]
      if (constrain.maxWidth > 744) {
        // submit button height
        _submitButtonHeight = constrain.maxHeight * 0.09;
        // font MD
        _fontSM = constrain.maxHeight * 0.03;
        // reduce the font size
        _fontLG = constrain.maxWidth * 0.08;
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
                  'Log in',
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
                      fontSize: _fontSM),
                  cursorColor: Theme.of(context).colorScheme.onPrimary,
                  keyboardType: TextInputType.emailAddress,
                  decoration: squareInputFieldDecorator(
                      hint: "Email "
                          "address",
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: _fontSM, padding: _textFieldPadding),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _email = value;
                  },
                  onSaved: (value) {
                    // on saved
                    _email = value ?? '';
                  },
                ),
                SizedBox(
                  height: _spacingMD,
                ),
                // password
                TextFormField(
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: _fontSM),
                  cursorColor: Theme.of(context).colorScheme.onPrimary,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: squareInputFieldDecorator(
                      hint: "Password",
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: _fontSM, padding: _textFieldPadding),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required!';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _password = value;
                  },
                  onSaved: (value) {
                    // on saved
                    _password = value ?? '';
                  },
                ),
                SizedBox(
                  height: _spacingMD,
                ),
                SizedBox(
                  width: constrain.maxWidth,
                  height: _submitButtonHeight,
                  child: SecondaryButton(
                    onClick: () {
                      // navigate to home screen
                      Navigator.pushReplacementNamed(context, HomeScreen
                          .routeName);
                    },
                    fontSize: _fontSM,
                    text: 'Log in',
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
