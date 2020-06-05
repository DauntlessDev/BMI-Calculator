import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xFF1D1F33);
const Color nonActiveCardColor = Color(0xFF0E1026);
const Color accentColor = Color(0xFFEA1556);
const Color activeTextColor = Colors.white;
const Color nonActiveTextColor = Colors.white60;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                          color: activeCardColor,
                          child: GenderIcon(
                            icon: FontAwesomeIcons.mars,
                            text: "MALE",
                            colorState: activeTextColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          color: activeCardColor,
                          child: GenderIcon(
                            icon: FontAwesomeIcons.venus,
                            text: "FEMALE",
                            colorState: nonActiveTextColor,
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
                    color: activeCardColor,
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
                          children: <Widget>[
                            Text(
                              "150",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
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
                        child: ReusableCard(color: activeCardColor),
                      ),
                      Expanded(
                        child: ReusableCard(color: activeCardColor),
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
        SizedBox(
          height: 10,
        ),
        Text(
          this.text,
          style: TextStyle(color: this.colorState),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.child});
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: this.color,
      ),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
    );
  }
}
