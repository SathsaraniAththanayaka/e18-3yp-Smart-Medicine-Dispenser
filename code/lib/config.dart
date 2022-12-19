import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF29B6F6);
const kBackgroundColor = Color.fromARGB(255, 255, 255, 255);
const kErrorColor = Color(0xFFFE5350);
const kUserBackground = Color.fromARGB(255, 142, 142, 165);

class Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}