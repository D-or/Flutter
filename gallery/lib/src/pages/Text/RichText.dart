import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_RichText extends StatelessWidget {
  H_RichText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'RichText',
      child: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'TextSpan',
              ),
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
