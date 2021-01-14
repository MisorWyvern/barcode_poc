import 'package:barcode_poc/widgets/padding_bodytext.dart';
import 'package:flutter/material.dart';

class BCScanPage extends StatefulWidget {
  @override
  _BCScanPageState createState() => _BCScanPageState();
}

class _BCScanPageState extends State<BCScanPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaddingBodyText(text: "Click to start scanning:"),
        RaisedButton(
          onPressed: () {},
          child: Text("Scan".toUpperCase()),
        )
      ],
    );
  }
}
