import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Slider extends StatefulWidget {
  H_Slider({Key key}) : super(key: key);

  H_SliderState createState() => H_SliderState();
}

class H_SliderState extends State<H_Slider> {
  double valueTop = 0.25;
  double valueMiddle = 50.0;
  double valueBottom = 75.0;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Slider',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Slider(
                  value: valueTop,
                  onChanged: (double value) {
                    setState(() {
                      valueTop = value;
                    });
                  },
                ),
                Slider(
                  value: valueBottom,
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  label: 'Bottom',
                  activeColor: Colors.indigo,
                  inactiveColor: Colors.grey[300],
                  onChanged: (double value) {
                    setState(() {
                      valueBottom = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
