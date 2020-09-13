import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild, this.onCardTap});
  final Color color;
  final Widget cardChild;
  Function onCardTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onCardTap,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.only(top: 7.5, left: 15.0, right: 15.0, bottom: 7.5),
        decoration: BoxDecoration(
          color: this.color == null ? kCardDefaultColor : this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
