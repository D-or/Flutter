import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_CustomSingleChildLayout extends StatelessWidget {
  H_CustomSingleChildLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'CustomSingleChildLayout',
      // body: CustomSingleChildLayout(
      //   delegate: null,
      //   child: Text('CustomSingleChildLayout'),
      // ),
    );
  }
}
