import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FractionallySizedBox extends StatelessWidget {
  H_FractionallySizedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'FractionallySizedBox',
      child: Container(
        height: 300.0,
        color: Colors.grey[100],
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Text('FractionallySizedBox'),
        ),
      ),
    );
  }
}
