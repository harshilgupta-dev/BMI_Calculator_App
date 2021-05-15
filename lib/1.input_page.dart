import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'constants.dart';

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
  double height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? kActiveCardColour
                        : kInactiveCardColour,
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
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ResuableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toInt().toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 25.0,
                          ),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                        ),
                        child: Slider(
                          value: height,
                          min: 120.0,
                          max: 220.0,
                          onChanged: (newValue) {
                            setState(() {
                              height = newValue;
                            });
                            print(newValue);
                          },
                        ),
                      )
                    ],
                  ),
                  colour: kActiveCardColour),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                      cardChild: Column(
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      colour: kActiveCardColour),
                ),
                Expanded(
                  child: ResuableCard(colour: kActiveCardColour),
                ),
              ],
            )),
            Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
    );
  }
}
