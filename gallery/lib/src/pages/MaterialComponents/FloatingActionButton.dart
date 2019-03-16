import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FloatingActionButton extends StatelessWidget {
  H_FloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'FloatingActionButton',
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(18, 185, 201, 1.0),
        mini: true,
        shape: const RoundedRectangleBorder(),
        highlightElevation: 20.0,
        tooltip: "FloatingActionButton",
        onPressed: () {
          print("Floating Action Button");
        },
      ),
    );
  }
}
