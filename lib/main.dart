import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        body: EightBall(),
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Us Anything'),
          backgroundColor: Colors.blue,
        ),
      )),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballFace = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: (){
              setState(() {
                ballFace=Random().nextInt(5)+1;
              });

            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Image.asset('images/ball$ballFace.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
