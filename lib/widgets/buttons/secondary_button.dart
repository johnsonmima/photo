// ************************************************
// Desc:  Secondary button
//************************************************

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key,
        required this.onClick,
        required this.text,
        required this.fontSize})
      : super(key: key);
  final VoidCallback onClick;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      return GestureDetector(
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              text.toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900,
                  textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: fontSize
                  ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
