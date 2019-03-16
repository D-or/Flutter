import 'package:flutter/material.dart';

import '../../components/Content.dart';

const list = [
  "IntrinsicWidth",
  "IntrinsicWidth, IntrinsicWidth",
  "IntrinsicWidth, IntrinsicWidth, IntrinsicWidth"
];

class H_IntrinsicWidth extends StatelessWidget {
  H_IntrinsicWidth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'IntrinsicWidth',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list
            .map((str) => IntrinsicWidth(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    width: 200.0,
                    color: Colors.grey[100],
                    child: Text(str),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
