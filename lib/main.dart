import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0E1026),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          textTheme: Typography.whiteCupertino),
      home: InputPage(),
    );
  }
}
