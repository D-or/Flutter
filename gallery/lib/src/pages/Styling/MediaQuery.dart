import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_MediaQuery extends StatelessWidget {
  H_MediaQuery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'MediaQuery',
      child: Center(
        child: Text(MediaQuery.of(context).toString()),
      ),
    );
  }
}
