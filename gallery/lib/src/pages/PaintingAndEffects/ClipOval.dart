import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ClipOval extends StatelessWidget {
  H_ClipOval({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ClipOval',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
          child: ClipOval(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              color: Colors.grey[200],
              child: Text('ClipOval'),
            ),
          ),
        ),
      ),
    );
  }
}
