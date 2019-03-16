import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedWidget extends StatelessWidget {
  H_AnimatedWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedWidget',
      child: Text('AnimatedWidget'),
    );
  }
}
