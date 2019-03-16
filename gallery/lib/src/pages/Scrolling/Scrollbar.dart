import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Scrollbar extends StatelessWidget {
  H_Scrollbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Scrollbar',
      child: Text('Scrollbar'),
    );
  }
}
