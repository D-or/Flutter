import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_RotatedBox extends StatelessWidget {
  H_RotatedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'RotatedBox',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.grey[200],
          child: RotatedBox(
            quarterTurns: 3,
            child: const Text('RotatedBox'),
          ),
        ),
      ),
    );
  }
}
