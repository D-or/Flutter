import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_ButtonBar extends StatelessWidget {
  H_ButtonBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'ButtonBar',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BackButton(),
                IconButton(
                  icon: Icon(Icons.wifi),
                  onPressed: () {
                    print('IconButton: wifi');
                  },
                ),
                CloseButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
