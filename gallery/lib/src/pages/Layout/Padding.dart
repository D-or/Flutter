import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Padding extends StatelessWidget {
  H_Padding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Padding',
      child: Center(
        child: Container(
          color: Colors.grey[300],
          child: Padding(
            padding: EdgeInsets.all(66.6),
            child: Text('Padding (all: 66.6)'),
          ),
        ),
      ),
    );
  }
}
