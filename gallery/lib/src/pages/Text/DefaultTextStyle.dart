import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DefaultTextStyle extends StatelessWidget {
  H_DefaultTextStyle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'DefaultTextStyle',
      child: Text('DefaultTextStyle'),
    );
  }
}
