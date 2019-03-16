import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FlutterLogo extends StatelessWidget {
  H_FlutterLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: "FlutterLogo",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FlutterLogo(
            size: 200.0,
            style: FlutterLogoStyle.horizontal,
          ),
          FlutterLogo(
            size: 200.0,
            style: FlutterLogoStyle.stacked,
          ),
          FlutterLogo(
            size: 200.0,
          ),
        ],
      ),
    );
  }
}
