import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_LimitedBox extends StatelessWidget {
  H_LimitedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'LimitedBox',
      child: Container(
        width: 110.0,
        height: 110.0,
        color: Colors.grey[200],
        child: LimitedBox(
          maxHeight: 100.0,
          maxWidth: 100.0,
          child: Container(
            width: 110.0,
            height: 110.0,
            color: Colors.grey[400],
            child: Text('LimitedBox'),
          ),
        ),
      ),
    );
  }
}
