import 'package:flutter/material.dart';

import '../../components/Content.dart';


class H_Radio extends StatefulWidget {
  H_Radio({Key key}) : super(key: key);

  H_RadioState createState() => H_RadioState();
}

class H_RadioState extends State<H_Radio> {
  final values = ['left', 'middle', 'right'];
  String groupValue = 'left';

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Radio',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: values.map((String value) => Radio(
                  groupValue: groupValue,
                  value: value,
                  onChanged: (Object obj) {
                    setState(() {
                      groupValue = obj;
                    });
                  },
                ),).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
