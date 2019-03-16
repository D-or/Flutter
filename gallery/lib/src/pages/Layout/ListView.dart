import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ListView extends StatelessWidget {
  H_ListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ListView',
      body: ListView(
        shrinkWrap: true,
        children: [1, 2, 3, 4, 5, 6, 7]
            .map((int item) => Container(
                  height: 100.0,
                  margin: EdgeInsets.all(10.0),
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(item.toString()),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
