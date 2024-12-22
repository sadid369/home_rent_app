import 'package:flutter/material.dart';

class AppTextStyle {
  // static const textSizeSmall = 12.83;
  static TextStyle textStyleSmall(double width, Color color) {
    return TextStyle(
      fontSize: (12.83 / width) * width,
      fontWeight: FontWeight.w400,
      height: 1.17,
      color: color,
    );
  }

  static TextStyle textStyleMedium(double width, Color color) {
    return TextStyle(
      fontSize: (17.1 / width) * width,
      fontWeight: FontWeight.w500,
      height: 1.17,
      color: color,
    );
  }

  static TextStyle textStyleLarge(double width, Color color) {
    return TextStyle(
      fontSize: (21.38 / width) * width,
      fontWeight: FontWeight.w600,
      height: 1.17,
      color: color,
    );
  }
}
