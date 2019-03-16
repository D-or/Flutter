import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FittedBox extends StatelessWidget {
  H_FittedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'FittedBox',
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: Colors.grey[200],
            height: 75.0,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text('BoxFit.cover'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: Colors.grey[200],
            height: 150.0,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text('BoxFit.fill'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: Colors.grey[200],
            height: 70.0,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text('BoxFit.contain'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: Colors.grey[200],
            height: 70.0,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text('BoxFit.fitHeight'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: Colors.grey[200],
            height: 70.0,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('BoxFit.fitWidth'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: Colors.grey[200],
            height: 70.0,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('BoxFit.scaleDown'),
            ),
          ),
        ],
      ),
    );
  }
}
