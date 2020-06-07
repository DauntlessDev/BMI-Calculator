import 'dart:math';

import 'package:bmi_calculator/screens/input_page.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age, this.gender});

  int height;
  int weight;
  int age;
  Gender gender;

  double calculateBMI() {
    return ((weight) / pow(height / 100, 2));
  }

  String checkBodyState() {
    double bmi = calculateBMI();
    String bodyState = "";
    if (bmi < 18.5) {
      bodyState = "You have a lower weight than normal. Try eating more!";
    } else if (bmi > 25.5) {
      bodyState = "You have a higher weight than normal. Try excercising!";
    } else {
      bodyState = "You have a normal body weight. Good Job!";
    }

    return bodyState;
  }

  wordBody() {
    double bmi = calculateBMI();
    String bodyState = "";
    if (bmi < 18.5) {
      bodyState = "UNDERWEIGHT";
    } else if (bmi > 25.5) {
      bodyState = "OBESE";
    } else {
      bodyState = "NORMAL";
    }

    return bodyState;
  }
}

