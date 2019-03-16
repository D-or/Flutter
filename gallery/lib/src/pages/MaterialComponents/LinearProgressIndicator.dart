import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_LinearProgressIndicator extends StatelessWidget {
  H_LinearProgressIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'LinearProgressIndicator',
      body: LinearProgressIndicator(
        backgroundColor: Colors.grey[200],
        value: 0.5,
        semanticsLabel: 'semanticsLabel',
        semanticsValue: 'semanticsValue',
      ),
    );
  }
}
