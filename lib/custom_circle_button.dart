import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class CustomCircleButton extends StatelessWidget {
  CustomCircleButton({@required this.icon, @required this.onPress});

  Icon icon;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: buttonColor, shape: BoxShape.circle),
        child: this.icon,
      ),
    );
  }
}
// you can also do it this way -> Composition

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final Function onPressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: this.onPressed,
        fillColor: buttonColor,
        constraints: BoxConstraints.tightFor(
          width: 50,
          height: 50,
        ),
        shape: CircleBorder(),
        child: this.icon);
  }
}
