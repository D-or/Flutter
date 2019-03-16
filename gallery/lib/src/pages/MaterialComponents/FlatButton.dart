import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FlatButton extends StatelessWidget {
  H_FlatButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'FlatButton',
      child: Container(
        height: 360.0,
        margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
        color: Colors.grey[200],
        child: Center(
          child: FlatButton(
            onPressed: () {
              print('FlatButton');
            },
            textColor: Color.fromRGBO(18, 185, 201, 1.0),
            splashColor: Colors.grey[100],
            highlightColor: Color.fromRGBO(18, 185, 201, 0.4),
            child: Text('FlatButton'),
          ),
        ),
      ),
    );
  }
}
