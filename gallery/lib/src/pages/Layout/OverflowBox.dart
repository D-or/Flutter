import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_OverflowBox extends StatelessWidget {
  H_OverflowBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Offstage',
      child: Container(
        color: Colors.grey[200],
        child: OverflowBox(
          minHeight: 100.0,
          maxHeight: 200.0,
          minWidth: 100.0,
          maxWidth: 200.0,
          child: Text('Offstage'),
        ),
      ),
    );
  }
}
