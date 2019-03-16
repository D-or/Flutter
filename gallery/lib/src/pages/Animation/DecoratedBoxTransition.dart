import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DecoratedBoxTransition extends StatelessWidget {
  H_DecoratedBoxTransition({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'DecoratedBoxTransition',
      body: Center(
        child: DecoratedBoxTransition(
          child: FlutterLogo(),
          // decoration: Animation<Decoration>(),
        ),
      ),
    );
  }
}
