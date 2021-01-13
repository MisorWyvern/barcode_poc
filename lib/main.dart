import 'package:barcode_poc/models/theme.dart';
import 'package:barcode_poc/pages/splash_screen_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BarcodePOC());
}

class BarcodePOC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode POC',
      theme: theme,
      home: SplashScreenPage(),
    );
  }
}
