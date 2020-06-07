import 'package:flutter/material.dart';

import 'constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.text, @required this.onPressed});
  final String text;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          color: kAccentColor,
          child: Center(
            child: Text(this.text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}