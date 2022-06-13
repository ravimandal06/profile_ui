import 'package:flutter/material.dart';

const Color bluishClr = Color.fromARGB(255, 23, 22, 21);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;

  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: darkGreyClr,
    colorScheme: ColorScheme.light(primary: primaryClr),
    brightness: Brightness.light,
    dividerColor: Colors.white,
  );

  static final dark = ThemeData(
      primaryColor: bluishClr,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(primary: primaryClr),
      dividerColor: Colors.black);
}
