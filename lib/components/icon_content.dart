import 'package:flutter/material.dart';
import 'constants.dart';

class IconContents extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;

  const IconContents({@required this.icon, @required this.text, this.active});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80.0,
          color: this.active ? kAccentColor : kInactiveCardContentColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: TextStyle(
            fontSize: 18.0,
            color: this.active ? kAccentColor : kInactiveCardContentColor,
          ),
        )
      ],
    );
  }
}
