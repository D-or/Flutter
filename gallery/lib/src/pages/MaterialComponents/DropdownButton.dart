import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DropdownButton extends StatefulWidget {
  H_DropdownButton({Key key}) : super(key: key);

  H_DropdownButtonState createState() => H_DropdownButtonState();
}

class H_DropdownButtonState extends State<H_DropdownButton> {
  dynamic value = Icons.shuffle;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'DropdownButton',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: DropdownButton(
              value: value,
              items: <DropdownMenuItem>[
                DropdownMenuItem(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.shuffle),
                      Text('shuffle'),
                    ],
                  ),
                  value: Icons.shuffle,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.snooze),
                      Text('snooze'),
                    ],
                  ),
                  value: Icons.snooze,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.sms),
                      Text('sms'),
                    ],
                  ),
                  value: Icons.sms,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.toys),
                      Text('toys'),
                    ],
                  ),
                  value: Icons.toys,
                ),
              ],
              onChanged: (dynamic item) {
                setState(() {
                  value = item;
                });
              },
              isDense: true,
              // isExpanded: true,
            ),
          ),
        ),
      ),
    );
  }
}
