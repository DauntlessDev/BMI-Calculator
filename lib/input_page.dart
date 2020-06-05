import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_icon.dart';
import 'reusable_card.dart';

const Color activeCardColor = Color(0xFF1D1F33);
const Color nonActiveCardColor = Color(0xFF0E1026);
const Color accentColor = Color(0xFFEA1556);
const Color activeTextColor = Colors.white;
const Color nonActiveTextColor = Colors.white60;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCard(
                          onPress: () => setState(() {
                            selectedGender = Gender.male;
                          }),
                          child: GenderIcon(
                            icon: FontAwesomeIcons.mars,
                            text: "MALE",
                            colorState: selectedGender == Gender.male
                                ? kActiveTextColor
                                : kInactiveTextColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: () => setState(() {
                            selectedGender = Gender.female;
                          }),
                          child: GenderIcon(
                            icon: FontAwesomeIcons.venus,
                            text: "FEMALE",
                            colorState: selectedGender == Gender.female
                                ? kActiveTextColor
                                : kInactiveTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: TextStyle(color: nonActiveTextColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(), style: knumberStyle),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: kActiveTextColor,
                              inactiveTrackColor: kInactiveTextColor,
                              thumbColor: kAccentColor,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayColor: Color(0x25EA1556),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30)),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            divisions: 100,
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCard(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'WEIGHT',
                                style: TextStyle(color: kInactiveTextColor),
                              ),
                              Text(
                                '72',
                                style: knumberStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: accentColor,
                  child: Center(
                    child: Text(
                      "CALCULATE YOUR BMI",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
