import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeColor = 0xFF1D1E33;
const inactiveColor = 0xFF111328;
const bottomContainerColor = Color(0xFFEB1555);

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
      body: SafeArea(
        child: Column(
          children: [
            // 1st Row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                        cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                    colour: Color(activeColor),
                  )),
                  Expanded(
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                      colour: Color(activeColor),
                    ),
                  ),
                ],
              ),
            ),
            // 2nd Row
            Expanded(
                child: ReusableCard(
                  colour: Color(activeColor),
            )),
            // 3rd row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                        colour: Color(activeColor),
                  )),
                  Expanded(
                      child: ReusableCard(
                        colour: Color(activeColor),
                  ))
                ],
              ),
            ),
            Container(
              height: bottomContainerHeight,
              width: double.infinity,
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
