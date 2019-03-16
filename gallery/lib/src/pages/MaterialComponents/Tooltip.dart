import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Tooltip extends StatelessWidget {
  H_Tooltip({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Tooltip',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Tooltip(
            message: 'Tooltip',
            child: RaisedButton.icon(
              icon: Icon(Icons.lightbulb_outline),
              label: Text('Tooltip'),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
