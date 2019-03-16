import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Scrollable extends StatelessWidget {
  H_Scrollable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Scrollable',
      // child: Scrollable(
      //   // Undefined class 'ViewportOffset'.dart(undefined_class) ?
      //   viewportBuilder: (BuildContext context, ViewportOffset offset) {},
      // ),
    );
  }
}
