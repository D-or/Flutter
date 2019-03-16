import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Hero extends StatelessWidget {
  H_Hero({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Hero',
      child: Text('Hero'),
    );
  }
}
