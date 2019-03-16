import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ExpansionPanel extends StatelessWidget {
  H_ExpansionPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ExpansionPanel',
      child: ExpansionPanelList(
        expansionCallback: (int i, bool b) {
          print(i);
          print(b);
        },
        children: [1, 2, 3]
            .map((int value) => ExpansionPanel(
                  headerBuilder: (BuildContext ctx, bool b) =>
                      Text(value.toString()),
                  body: Text('Expansion Panel $value'),
                ))
            .toList(),
      ),
    );
  }
}
