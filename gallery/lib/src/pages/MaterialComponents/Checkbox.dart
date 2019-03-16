import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Checkbox extends StatefulWidget {
  H_Checkbox({Key key}) : super(key: key);

  H_CheckboxState createState() => H_CheckboxState();
}

class H_CheckboxState extends State<H_Checkbox> {
  bool valueLeft = true;
  bool valueRignt = false;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Checkbox',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Checkbox(
                  value: valueLeft,
                  onChanged: (bool value) {
                    setState(() {
                      valueRignt = !valueRignt;
                    });
                  },
                ),
                Checkbox(
                  value: valueRignt,
                  onChanged: (bool value) {
                    setState(() {
                      valueLeft = !valueLeft;
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
