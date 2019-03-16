import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Row extends StatelessWidget {
  H_Row({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Row',
      child: Row(
        children: <Widget>[
          Text('Row'),
        ],
      ),
    );
  }
}
