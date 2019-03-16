import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_CupertinoPageScaffold extends StatelessWidget {
  H_CupertinoPageScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'CupertinoPageScaffold',
      child: Text('CupertinoPageScaffold'),
    );
  }
}
