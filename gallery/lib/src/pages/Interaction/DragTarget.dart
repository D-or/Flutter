import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DragTarget extends StatelessWidget {
  H_DragTarget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'DragTarget',
      child: Text('DragTarget'),
    );
  }
}
