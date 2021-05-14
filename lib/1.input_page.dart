import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardColorOnChange = 0xFF1D1E33;

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
                        colour: Color(cardColorOnChange),
                  )),
                  Expanded(
                      child: ReusableCard(
                        colour: Color(cardColorOnChange),
                  )),
                ],
              ),
            ),
            // 2nd Row
            Expanded(
                child: ReusableCard(
                  colour: Color(cardColorOnChange),
            )),
            // 3rd row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                        colour: Color(cardColorOnChange),
                  )),
                  Expanded(
                      child: ReusableCard(
                        colour: Color(cardColorOnChange),
                  ))
                ],
              ),
            ),
            Container(
              height: bottomContainerHeight,
              width: double.infinity,
              color: Colors.pink,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
