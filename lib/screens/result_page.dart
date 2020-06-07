import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Your Result',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ReusableCard(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Center(
                    child:
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                          Text('NORMAL',
                              style: TextStyle(
                                  color: Colors.green[500],
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "22.1",
                            style: kLargeNumberStyle,
                          ),
                          SizedBox(height: 10),
                          Text('Normal BMI range:',
                              style: TextStyle(color: kInactiveTextColor,
                                fontWeight: FontWeight.bold)),
                          Text('18.5 - 25kg/m2',
                              style: kboldStyle),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            child: Text(
                              'You have a normal body weight. Good job!',
                              style: kboldStyle,
                              textAlign: TextAlign.center,
                          ),),
                          SizedBox(height: 60),
                          FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 60),
                            onPressed: () {},
                            color: Color(0xFF0E1026),
                            child: Text('SAVE RESULT',
                                style: greyTextStyle),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ),
          CalculateButton(
            text: 'RE-CALCULATE YOUR BMI',
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
