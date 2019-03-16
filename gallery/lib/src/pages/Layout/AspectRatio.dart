import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AspectRatio extends StatelessWidget {
  H_AspectRatio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AspectRatio',
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                color: Colors.black12,
                child: Center(
                  child: Text('aspectRatio: 1.0'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: AspectRatio(
              aspectRatio: 2.0,
              child: Container(
                color: Colors.black12,
                child: Center(
                  child: Text('aspectRatio: 2.0'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: AspectRatio(
              aspectRatio: 4.0,
              child: Container(
                color: Colors.black12,
                child: Center(
                  child: Text('aspectRatio: 4.0'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: AspectRatio(
              aspectRatio: 8.0,
              child: Container(
                color: Colors.black12,
                child: Center(
                  child: Text('aspectRatio: 8.0'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: AspectRatio(
              aspectRatio: 16.0,
              child: Container(
                color: Colors.black12,
                child: Center(
                  child: Text('aspectRatio: 16.0'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: AspectRatio(
              aspectRatio: 32.0,
              child: Container(
                color: Colors.black12,
                child: Center(
                  child: Text('aspectRatio: 32.0'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
