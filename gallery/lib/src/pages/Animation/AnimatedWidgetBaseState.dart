import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedWidgetBaseState extends StatelessWidget {
  H_AnimatedWidgetBaseState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedWidgetBaseState',
      child: Text('AnimatedWidgetBaseState'),
    );
  }
}
