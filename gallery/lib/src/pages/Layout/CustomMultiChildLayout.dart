import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_CustomMultiChildLayout extends StatelessWidget {
  H_CustomMultiChildLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'CustomMultiChildLayout',
      // child: CustomMultiChildLayout(
      //   delegate: null,
      //   children: <Widget>[
      //     Text('CustomMultiChildLayout'),
      //   ],
      // ),
    );
  }
}
