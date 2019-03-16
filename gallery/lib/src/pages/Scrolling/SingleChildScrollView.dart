import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_SingleChildScrollView extends StatelessWidget {
  H_SingleChildScrollView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'SingleChildScrollView',
      child: Text('SingleChildScrollView'),
    );
  }
}
