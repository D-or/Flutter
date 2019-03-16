import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ListView extends StatelessWidget {
  H_ListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ListView',
      child: Text('ListView'),
    );
  }
}
