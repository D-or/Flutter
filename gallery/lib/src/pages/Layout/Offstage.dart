import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Offstage extends StatelessWidget {
  H_Offstage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Offstage',
      child: Offstage(
        child: Text('Offstage'),
      ),
    );
  }
}
