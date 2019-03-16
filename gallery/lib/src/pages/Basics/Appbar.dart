import 'package:flutter/material.dart';

class H_Appbar extends StatelessWidget {
  H_Appbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        leading: FlatButton(
          child: Icon(Icons.backspace),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Icon(Icons.gesture),
          Icon(Icons.share),
        ],
      ),
    );
  }
}
