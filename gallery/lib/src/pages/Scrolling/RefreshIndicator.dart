import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_RefreshIndicator extends StatelessWidget {
  H_RefreshIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'RefreshIndicator',
      body: RefreshIndicator(
        child: Center(
          child: Text('RefreshIndicator'),
        ),
        onRefresh: () {
          print('RefreshIndicator!');
        },
      ),
    );
  }
}
