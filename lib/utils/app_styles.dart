import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff787456);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xff526799);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headingStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headingStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headingStyle3 =
      TextStyle(fontSize: 17, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headingStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
