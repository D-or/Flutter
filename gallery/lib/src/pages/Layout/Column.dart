import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Column extends StatelessWidget {
  H_Column({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Column',
      child: Column(
        children: <Widget>[
          Text('Column'),
        ],
      ),
    );
  }
}
