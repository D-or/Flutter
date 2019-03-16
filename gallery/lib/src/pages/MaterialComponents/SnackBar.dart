import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_SnackBar extends StatelessWidget {
  H_SnackBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'SnackBar',
      child: Builder(
        builder: (BuildContext ctx) => Container(
              height: 300.0,
              color: Colors.grey[200],
              child: Center(
                child: RaisedButton.icon(
                    label: Text('SnackBar'),
                    icon: Icon(Icons.work),
                    onPressed: () {
                      Scaffold.of(ctx).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('This is a SnackBar'),
                        ),
                      );
                    }),
              ),
            ),
      ),
    );
  }
}
