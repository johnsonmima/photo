// ************************************************
// Desc:  Privacy and Policy
//************************************************
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyLinkAndTermsOfService extends StatelessWidget {
  final double fontSize;

  const PrivacyPolicyLinkAndTermsOfService({Key? key, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Text.rich(
          TextSpan(
              text: 'By signing up, you agree to Photo\'s ',
              style: TextStyle(
                  fontSize: fontSize,
                  color: Theme.of(context).colorScheme.onPrimary),
              children: <TextSpan>[
                TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Theme.of(context).colorScheme.onPrimary,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // launch privacy policy link here
                      }),
                TextSpan(
                    text: ' and ',
                    style: TextStyle(
                        fontSize: fontSize,
                        color: Theme.of(context).colorScheme.onPrimary),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Theme.of(context).colorScheme.onPrimary,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // lunch privacy policy link
                            }),
                    ])
              ]),
        ),
      ),
    );
  }
}
