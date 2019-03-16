import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_BottomSheet extends StatelessWidget {
  H_BottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'BottomSheet',
      child: Builder(
        builder: (BuildContext ctx) => Container(
              height: 300.0,
              color: Colors.grey[200],
              child: Center(
                child: RaisedButton.icon(
                  label: Text('Show BottomSheet'),
                  icon: Icon(Icons.touch_app),
                  onPressed: () {
                    showBottomSheet(
                      context: ctx,
                      builder: (BuildContext context) => BottomSheet(
                            onClosing: () {
                              print('Closing');
                            },
                            enableDrag: false,
                            // elevation: 12.0,
                            builder: (BuildContext context) => Container(
                                  height: 200.0,
                                  color: Colors.grey[500],
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.vertical_align_bottom,
                                        size: 40.0,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ),
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
