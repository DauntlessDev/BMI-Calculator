import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'custom_circle_button.dart';

class LastRowCard extends StatefulWidget {
  LastRowCard({@required this.text, @required this.number});
  String text;
  int number;

  @override
  _LastRowCardState createState() => _LastRowCardState();
}

class _LastRowCardState extends State<LastRowCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.widget.text,
          style: TextStyle(color: kInactiveTextColor),
        ),
        Text(
          this.widget.number.toString(),
          style: knumberStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              onPressed: () => setState(() {
                this.widget.number--;
              }),
              icon: Icon(
                FontAwesomeIcons.minus,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              onPressed: () => setState(() {
                this.widget.number++;
              }),
              icon: Icon(
                FontAwesomeIcons.plus,
              ),
            ),
          ],
        )
      ],
    );
  }
}
