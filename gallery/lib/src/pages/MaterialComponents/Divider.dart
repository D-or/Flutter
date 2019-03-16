import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Divider extends StatelessWidget {
  H_Divider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Divider',
      child: Container(
        height: 400.0,
        color: Colors.grey[200],
        child: Container(
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(10.0),
          color: Colors.grey[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                .map((int item) => Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Item $item'),
                          Divider(
                            height: 10.0,
                            indent: 10.0,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
