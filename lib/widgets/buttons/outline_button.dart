// ************************************************
// Desc:  Outline button
//************************************************

import 'package:flutter/material.dart';

class OutLineButton extends StatelessWidget {
  const OutLineButton(
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
              border: Border.all(color: Theme.of(context).colorScheme.onPrimary,
                  width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                text.toUpperCase(),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto'),
              ),
            ),
        ),
      );
    });
  }
}
