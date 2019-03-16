import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Align extends StatelessWidget {
  H_Align({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Align',
      child: Container(
        height: 300.0,
        color: Colors.grey[100],
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text('Align bottomRight'),
        ),
      ),
    );
  }
}
