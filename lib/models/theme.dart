import 'package:flutter/material.dart';

final double _fontSizeUnit = 8;

//Color Palette
final Color _black = Color(0xFF212121);
final Color _lightGrey = Color(0xFFBDBDBD);
final Color _darkPurple = Color(0xFF512DA8);
final Color _lightPurple = Color(0xFFD1C4E9);
final Color _purple = Color(0xFF673AB7);
final Color _lime = Color(0xFFCDDC39);

final ThemeData theme = ThemeData(
  primarySwatch: Colors.deepPurple,
  primaryColorDark: _darkPurple,
  primaryColorLight: _lightPurple,
  primaryColor: _purple,
  accentColor: _lime,
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: _black,
      fontSize: _fontSizeUnit * 2,
    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontSize: _fontSizeUnit * 2,
    ),
    headline1: TextStyle(
      color: Colors.white,
      fontSize: _fontSizeUnit * 5.5,
      fontWeight: FontWeight.w400,
    ),
    headline2: TextStyle(
      color: _darkPurple,
      fontSize: _fontSizeUnit * 4,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: _darkPurple,
      fontSize: _fontSizeUnit * 3,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: _darkPurple,
      fontSize: _fontSizeUnit * 2.2,
      fontWeight: FontWeight.bold,
    ),
  ),
  iconTheme: IconThemeData(color: Colors.white),
  dividerColor: _lightGrey,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
