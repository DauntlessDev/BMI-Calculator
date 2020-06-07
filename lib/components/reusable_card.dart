import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.child, this.onPress});
  final Widget child;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
          child: Container(
        child: this.child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kActiveCardColor,
        ),
        margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
      ),
    );
  }
}
