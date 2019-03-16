import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Drawer extends StatelessWidget {
  H_Drawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Drawer',
      child: Builder(
        builder: (BuildContext ctx) => Center(
              child: RaisedButton(
                child: Text('Back'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              ),
            ),
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('End Drawer'),
        ),
      ),
    );
  }
}
