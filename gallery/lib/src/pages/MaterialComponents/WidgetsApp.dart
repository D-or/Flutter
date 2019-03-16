import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_WidgetsApp extends StatelessWidget {
  H_WidgetsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'WidgetsApp',
      child: Text('WidgetsApp'),
    );
  }
}
