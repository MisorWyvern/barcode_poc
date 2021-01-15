import 'package:flutter/material.dart';

class PaddedBodyText extends StatelessWidget {
  final String text;

  const PaddedBodyText({this.text}) : assert(text != null);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
