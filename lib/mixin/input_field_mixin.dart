// ************************************************
// Desc:  Text Input Field Mixin
//************************************************

import 'package:flutter/material.dart';

mixin InputFieldMixin {
  // square size input field decorator
  InputDecoration squareInputFieldDecorator(
      {required String hint,
      required Color color,
      required double fontSize,
      required double padding}) {
    return InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.all(padding),
      hintText: hint,
      hintStyle: TextStyle(color: color, fontSize: fontSize),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: color, width: 2)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 2),
      ),
    );
  }
}
