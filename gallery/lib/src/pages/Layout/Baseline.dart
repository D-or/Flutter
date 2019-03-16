import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Baseline extends StatelessWidget {
  H_Baseline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Baseline',
      child: Container(
        height: 300.0,
        color: Colors.grey[100],
        child: Baseline(
          baseline: 1.0,
          baselineType: TextBaseline.ideographic,
          child: Text('Baseline'),
        ),
      ),
    );
  }
}
