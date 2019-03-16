import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Card extends StatelessWidget {
  H_Card({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Card',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Card(
            color: Colors.grey[100],
            margin: EdgeInsets.all(8.0),
            elevation: 2.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Text('Card'),
            ),
            semanticContainer: false,
          ),
        ),
      ),
    );
  }
}
