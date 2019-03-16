import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Switch extends StatefulWidget {
  H_Switch({Key key}) : super(key: key);

  H_SwitchState createState() => H_SwitchState();
}

class H_SwitchState extends State<H_Switch> {
  bool valueTop = true;
  bool valueBottom = false;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Switch',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Switch(
                  value: valueTop,
                  onChanged: (bool value) {
                    setState(() {
                      valueBottom = !valueBottom;
                    });
                  },
                ),
                Switch(
                  value: valueBottom,
                  activeTrackColor: Color.fromRGBO(18, 185, 201, 0.5),
                  activeColor: Color.fromRGBO(18, 185, 201, 1.0),
                  inactiveTrackColor: Colors.grey[400],
                  onChanged: (bool value) {
                    setState(() {
                      valueTop = !valueTop;
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
