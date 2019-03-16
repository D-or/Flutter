import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_SizedOverflowBox extends StatelessWidget {
  H_SizedOverflowBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'SizedOverflowBox',
      child: Container(
        color: Colors.grey[200],
        child: SizedOverflowBox(
          size: Size(10.0, 50.0),
          child: Text('SizedOverflowBox'),
        ),
      ),
    );
  }
}
