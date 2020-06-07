import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color colorState;

  GenderIcon(
      {@required this.icon, @required this.text, @required this.colorState});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(this.icon, size: 100.0, color: this.colorState),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            this.text,
            style: TextStyle(color: this.colorState),
          ),
        ),
      ],
    );
  }
}
