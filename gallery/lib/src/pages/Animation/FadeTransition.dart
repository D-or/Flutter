import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FadeTransition extends StatelessWidget {
  H_FadeTransition({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'FadeTransition',
      child: Text('FadeTransition'),
    );
  }
}
