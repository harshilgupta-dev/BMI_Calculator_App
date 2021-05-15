import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';


enum Gender { male, female }

class InputPage extends StatefulWidget {
  Gender selectedGender;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        print('Male Button Pressed');
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selectedGender == Gender.male
                        ? activeCardColour
                        : inactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        print('FeMale Button Pressed');
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ResuableCard(colour: activeCardColour),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ResuableCard(colour: activeCardColour),
                ),
                Expanded(
                  child: ResuableCard(colour: activeCardColour),
                ),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
