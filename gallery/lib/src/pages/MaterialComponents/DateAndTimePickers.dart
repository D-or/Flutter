import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DateAndTimePickers extends StatefulWidget {
  H_DateAndTimePickers({Key key}) : super(key: key);

  H_DateAndTimePickersState createState() => H_DateAndTimePickersState();
}

class H_DateAndTimePickersState extends State<H_DateAndTimePickers> {
  double valueTop = 0.25;
  double valueMiddle = 50.0;
  double valueBottom = 75.0;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Date & Time Pickers',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: null,
          ),
        ),
      ),
    );
  }
}
