import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            Expanded(child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: Card(),
                  ),
                ),
              ],
            ),),
            // 2nd Row
            Expanded(child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              //child: Card(),
            ),),
            // 3rd row
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: Card(),
                ),),
                Expanded(child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: Card(),
                ),)
              ],
            ))
          ],
        )
      )

    );
  }
}
