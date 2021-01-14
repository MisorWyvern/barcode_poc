import 'package:barcode_poc/widgets/padding_bodytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Bem Vindo!",
              style: _theme.textTheme.headline2,
            ),
            PaddingBodyText(
                text:
                    "Escolha entre as opções do menu abaixo para testar as funcionalidades."),
            Divider(),
            SvgPicture.asset(
              "assets/icons/barcode-scan.svg",
              color: _theme.textTheme.bodyText1.color,
            ),
            PaddingBodyText(
                text: "Clique no botão \"BC Scan\" para testar a lib:"),
            Text(
              "\"https://pub.dev/packages/flutter_barcode_scanner\"",
              style: _theme.textTheme.headline6,
            ),
            Divider(),
            SvgPicture.asset(
              "assets/icons/barcode-scan.svg",
              color: _theme.textTheme.bodyText1.color,
            ),
            PaddingBodyText(
                text: "Clique no botão \"ML Scan\" para testar a lib:"),
            Text(
              "\"https://github.com/FirebaseExtended/flutterfire/tree/master/packages/firebase_ml_vision",
              style: _theme.textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
