import 'package:flutter/material.dart';

import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed, this.onLongPressed});
  final IconData icon;
  final Function onPressed;
  final Function onLongPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(this.icon),
      onPressed: this.onPressed,
      onLongPress: this.onLongPressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kAccentColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
