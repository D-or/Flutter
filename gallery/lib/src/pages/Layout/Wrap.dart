import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Wrap extends StatelessWidget {
  H_Wrap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Wrap',
      child: Wrap(
        children: <Widget>[
          Text('Wrap'),
        ],
      ),
    );
  }
}
