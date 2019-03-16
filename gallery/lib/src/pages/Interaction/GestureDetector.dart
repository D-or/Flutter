import 'package:flutter/material.dart';
import 'dart:math';

import '../../components/Content.dart';

class H_GestureDetector extends StatefulWidget {
  @override
  H_GestureDetectorState createState() => H_GestureDetectorState();
}

class H_GestureDetectorState extends State<H_GestureDetector> {
  Random number;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'GestureDetector',
      body: Center(
        child: Container(
          height: 100,
          child: GestureDetector(
            onTap: () {
              setState(() {
                number = Random(1);
              });
            },
            child: Column(
              children: <Widget>[
                Text('Random Number'),
                Text(number == null ? '0' : number.nextDouble().toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
