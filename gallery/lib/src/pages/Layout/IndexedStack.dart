import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_IndexedStack extends StatelessWidget {
  H_IndexedStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'IndexedStack',
      child: IndexedStack(
        children: <Widget>[
          Text('IndexedStack'),
        ],
      ),
    );
  }
}
