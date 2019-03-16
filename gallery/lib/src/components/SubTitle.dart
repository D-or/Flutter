import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  SubTitle({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
        color: Colors.black12,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black45,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
