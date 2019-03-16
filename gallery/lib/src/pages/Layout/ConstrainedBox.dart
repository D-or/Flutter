import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ConstrainedBox extends StatelessWidget {
  H_ConstrainedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ConstrainedBox',
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 20.0,
          minWidth: 20.0,
          maxHeight: 100.0,
          maxWidth: 100.0,
        ),
        child: Container(
          color: Colors.grey[200],
          child: Text('ConstrainedBox'),
        ),
      ),
    );
  }
}
