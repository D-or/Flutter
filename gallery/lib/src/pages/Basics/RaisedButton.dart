import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_RaisedButton extends StatelessWidget {
  H_RaisedButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: "RaisedButton",
      child: Center(
        heightFactor: 3.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("RaisedButton 1"),
              onPressed: () {
                print("RaisedButton 1");
              },
            ),
            RaisedButton(
              child: Text("RaisedButton 2"),
              color: Colors.lightBlue,
              splashColor: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                print("RaisedButton 2");
              },
            ),
            RaisedButton(
              child: Text("H"),
              shape: CircleBorder(
                  side: BorderSide(color: Colors.grey[400], width: 1.0)),
              onPressed: () {
                print("H");
              },
            ),
          ],
        ),
      ),
    );
  }
}
