import 'package:flutter/material.dart';

class IconButtonLabel extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconButtonLabel({
    Key key,
    @required this.icon,
    @required this.text,
  })  : assert(text != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon != null
            ? Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(icon),
              )
            : Container(),
        Text(text.toUpperCase()),
      ],
    );
  }
}
