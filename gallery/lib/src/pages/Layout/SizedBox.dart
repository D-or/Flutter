import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_SizedBox extends StatelessWidget {
  H_SizedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'SizedBox',
      child: Container(
        color: Colors.grey[200],
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Text('SizedBox'),
        ),
      ),
    );
  }
}
