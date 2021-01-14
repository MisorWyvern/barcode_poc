import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MainPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      color: _theme.primaryColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/barcode.svg",
              color: _theme.textTheme.headline1.color,
              semanticsLabel: "Barcode Icon",
              width: _theme.textTheme.headline1.fontSize * 2,
            ),
            Text(
              "Barcode POC",
              style: _theme.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
