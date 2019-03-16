import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_SimpleDialog extends StatelessWidget {
  H_SimpleDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'SimpleDialog',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: RaisedButton.icon(
              label: Text('Show Dialog'),
              icon: Icon(Icons.mouse),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                        title: Text('Title'),
                        contentPadding:
                            EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 16.0),
                        children:
                            [1, 2, 3, 4].map((int i) => Text('Child $i')).toList(),
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
