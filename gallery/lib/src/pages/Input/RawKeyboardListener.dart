import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_RawKeyboardListener extends StatelessWidget {
  H_RawKeyboardListener({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'RawKeyboardListener',
      child: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            RawKeyboardListener(
              child: Text('RawKeyboardListener'),
              onKey: (e) {
                print(e);
              },
              // focusNode: ,
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: InputBorder.none,
            //     hintText: "Please enter something",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
