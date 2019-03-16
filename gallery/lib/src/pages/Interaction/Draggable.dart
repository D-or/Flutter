import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Draggable extends StatelessWidget {
  H_Draggable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Draggable',
      child: Text('Draggable'),
    );
  }
}
