import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiText,
      @required this.wordBodyState,
      @required this.sentenceBodyState});
      
  final String wordBodyState;
  final String sentenceBodyState;
  final String bmiText;

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
                          Text(wordBodyState,
                              style: TextStyle(
                                  color: Colors.green[500],
                                  fontWeight: FontWeight.bold)),
                          Text(
                            bmiText,
                            style: kLargeNumberStyle,
                          ),
                          SizedBox(height: 10),
                          Text('Normal BMI range:',
                              style: TextStyle(
                                  color: kInactiveTextColor,
                                  fontWeight: FontWeight.bold)),
                          Text('18.5 - 25kg/m2', style: kboldStyle),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            child: Text(sentenceBodyState,
                              style: kboldStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 60),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 60),
                            color: Color(0xFF0E1026),
                            child: Text('RESULT', style: greyTextStyle),
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
