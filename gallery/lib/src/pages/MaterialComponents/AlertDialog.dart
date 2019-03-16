import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AlertDialog extends StatelessWidget {
  H_AlertDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AlertDialog',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: RaisedButton.icon(
              label: Text('Alert Dialog'),
              icon: Icon(Icons.mouse),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text('Title'),
                        content: Text('Will you like Flutter ?'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text(
                              'Yeap !',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            textColor: Colors.grey[400],
                            child: Icon(Icons.thumb_up),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                        semanticLabel: 'Semantic Label',
                      ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
