import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cardContent.dart';
import 'resuableCard.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild:
                      CardContent(icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: activeCardColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: activeCardColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}
