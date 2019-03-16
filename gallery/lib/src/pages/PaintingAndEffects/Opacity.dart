import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Opacity extends StatefulWidget {
  H_Opacity({Key key}) : super(key: key);

  @override
  createState() => H_OpacityState();
}

class H_OpacityState extends State<H_Opacity> {
  bool visible = true;
  String label = 'Hide';

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Opacity',
      child: Center(
        child: Column(
          children: <Widget>[
            Opacity(
              opacity: visible ? 1.0 : 0.0,
              child: const Text('Now you see me, now you don\'t!'),
            ),
            RaisedButton(
              child: Text(label),
              onPressed: () {
                setState(() {
                  visible = !visible;
                  label = visible ? 'Hide' : 'Show';
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
