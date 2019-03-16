import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Theme extends StatelessWidget {
  H_Theme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Theme',
      child: Theme(
        data: ThemeData(
          primaryColor: Color.fromRGBO(18, 185, 201, 1.0),
        ),
        child: Text('Theme'),
      ),
    );
  }
}
