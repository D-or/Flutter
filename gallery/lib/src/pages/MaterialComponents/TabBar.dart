import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_TabBar extends StatelessWidget {
  H_TabBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Content(
        title: 'TabBar & TabBarView',
        tabBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.http),
              text: 'HTTP',
            ),
            Tab(
              icon: Icon(Icons.https),
              text: 'HTTPS',
            ),
            Tab(
              icon: Icon(Icons.kitchen),
              text: 'Kitchen',
            ),
            Tab(
              icon: Icon(Icons.mic),
              text: 'Mic',
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.http,
              size: 80.0,
            ),
            Icon(
              Icons.https,
              size: 80.0,
            ),
            Icon(
              Icons.kitchen,
              size: 80.0,
            ),
            Icon(
              Icons.mic,
              size: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
