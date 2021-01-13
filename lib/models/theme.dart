import 'package:flutter/material.dart';

final double _fontSizeUnit = 8;

final ThemeData theme = ThemeData(
  primarySwatch: Colors.deepPurple,
  primaryColorDark: Color(0xFF512DA8),
  primaryColorLight: Color(0xFFD1C4E9),
  primaryColor: Color(0xFF673AB7),
  accentColor: Color(0xFFCDDC39),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Color(0xFF212121),
    ),
    bodyText2: TextStyle(
      color: Colors.white,
    ),
    headline1: TextStyle(
      color: Colors.white,
      fontSize: _fontSizeUnit * 5.5,
      fontWeight: FontWeight.w400,
    ),
  ),
  iconTheme: IconThemeData(color: Colors.white),
  dividerColor: Color(0xFFBDBDBD),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
