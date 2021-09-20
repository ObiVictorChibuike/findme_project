import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
//App Colors
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);
  static const Color blue = Color(0xFF2B365A);
  static const Color lightBlue = Color(0xFF2B365A);
  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color black = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color red = Color(0xFFF80404);
//App Font
  //static const String fontName = 'Poppins';

//App TextStyles
  static const TextStyle headerTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w700,
    fontSize: 28,
    letterSpacing: 0.5,
    height: 0.9,
    color: blue,
  );
  static const TextStyle blackTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.5,
    height: 0.9,
    color: darkerText,
  );
  static const TextStyle whiteTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w400,
    fontSize: 30,
    letterSpacing: 0.5,
    height: 0.9,
    color: notWhite,
  );
  static const TextStyle whiteHeaderTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    letterSpacing: 0.5,
    height: 0.9,
    color: notWhite,
  );
  static const TextStyle greyTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.5,
    height: 0.9,
    color: grey,
  );
  static const TextStyle greyBoldTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w800,
    fontSize: 15,
    letterSpacing: 0.5,
    height: 0.9,
    color: grey,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.5,
    height: 0.9,
    color: white,
  );

  static const TextStyle title = TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w400,
    fontSize: 25,
    letterSpacing: 0.5,
    height: 0.9,
    color: darkerText,
  );
}