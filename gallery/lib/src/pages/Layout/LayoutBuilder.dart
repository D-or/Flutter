import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_LayoutBuilder extends StatelessWidget {
  H_LayoutBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'LayoutBuilder',
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints boxConstraints) =>
            Container(
              color: Colors.grey[200],
              height: 300.0,
              width: 300.0,
              child: Text('LayoutBuilder'),
            ),
      ),
    );
  }
}
