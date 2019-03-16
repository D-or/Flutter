import 'package:flutter/material.dart';

import '../../components/Content.dart';

const list = [
  "IntrinsicHeight",
  "IntrinsicHeight, IntrinsicHeight",
  "IntrinsicHeight, IntrinsicHeight, IntrinsicHeight"
];

class H_IntrinsicHeight extends StatelessWidget {
  H_IntrinsicHeight({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'IntrinsicHeight',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list
            .map((str) => IntrinsicHeight(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    height: 50.0,
                    color: Colors.grey[100],
                    child: Text(str),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
