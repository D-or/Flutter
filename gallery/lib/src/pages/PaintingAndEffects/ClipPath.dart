import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ClipPath extends StatelessWidget {
  H_ClipPath({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ClipPath',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
          child: ClipPath(
            child: Container(
              color: Colors.grey[200],
              child: Text('ClipPath'),
            ),
          ),
        ),
      ),
    );
  }
}
