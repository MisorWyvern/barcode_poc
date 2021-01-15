import 'package:flutter/material.dart';

import 'icon_button_label.dart';

class CustomRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final IconData icon;

  const CustomRaisedButton({Key key, this.onPressed, this.text, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
        color: Theme.of(context).primaryColor,
        textColor: Theme.of(context).textTheme.bodyText2.color,
        onPressed: onPressed,
        child: IconButtonLabel(
          icon: icon,
          text: text,
        ),
      ),
    );
  }
}
