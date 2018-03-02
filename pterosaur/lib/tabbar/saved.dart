import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => new _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 40.0),
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: new Text(
              'Saved',
              style: const TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold
              ),
            )
          ),

          new Container(
            padding: const EdgeInsets.symmetric(vertical: 80.0),
            decoration: new BoxDecoration(
              color: const Color(0xffefefef)
            ),
            child: new Icon(
              Icons.free_breakfast,
              size: 56.0,
              color: Colors.white
            ),
          ),

          new Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: new Text(
              'Ko Nakha Noi',
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      )
    );
  }
}
