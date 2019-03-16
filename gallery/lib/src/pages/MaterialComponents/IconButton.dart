import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_IconButton extends StatelessWidget {
  H_IconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'IconButton',
      child: Container(
        height: 360.0,
        margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
        color: Colors.grey[200],
        child: Center(
          child: IconButton(
            icon: Icon(Icons.shop),
            iconSize: 40.0,
            highlightColor: Color.fromRGBO(18, 185, 201, 1.0),
            onPressed: () {
              print('IconButton');
            },
            tooltip: 'IconButton',
          ),
        ),
      ),
    );
  }
}
