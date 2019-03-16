import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Expanded extends StatelessWidget {
  H_Expanded({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Expanded',
      child: Container(
        color: Colors.grey[200],
        height: 300.0,
        width: 300.0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: Text('Expanded'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
