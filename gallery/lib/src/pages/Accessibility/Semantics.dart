import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Semantics extends StatelessWidget {
  H_Semantics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Semantics',
      body: Center(
        child: Semantics(
          excludeSemantics: true,
          enabled: true,
          checked: true,
          container: true,
          child: Text('Semantics'),
        ),
      ),
    );
  }
}
