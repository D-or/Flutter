import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ClipRect extends StatelessWidget {
  H_ClipRect({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ClipRect',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
          child: ClipRect(
            child: Container(
              color: Colors.grey[200],
              child: Text('ClipRect'),
            ),
          ),
        ),
      ),
    );
  }
}
