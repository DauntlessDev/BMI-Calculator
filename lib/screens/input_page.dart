import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/gender_icon.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

int height = 150;
int age = 19;
int weight = 74;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

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
                          "HEIGHT", style: greyTextStyle,
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
                                style: greyTextStyle,
                              ),
                              Text(
                                weight.toString(),
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
                                      weight--;
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
                                      weight++;
                                    }),
                                    icon: Icon(
                                      FontAwesomeIcons.plus,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'AGE',
                                style: greyTextStyle,
                              ),
                              Text(
                                age.toString(),
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
                                      age--;
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
                                      age++;
                                    }),
                                    icon: Icon(
                                      FontAwesomeIcons.plus,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CalculateButton(
                text: "CALCULATE YOUR BMI",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

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
