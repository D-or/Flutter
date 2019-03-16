import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content({
    Key key,
    this.title,
    this.child,
    this.bottomNavigationBar,
    this.tabBar,
    this.body,
    this.drawer,
    this.endDrawer,
    this.floatingActionButton,
  }) : super(key: key);

  final String title;
  final Widget tabBar;
  final Widget body;
  final Widget child;
  final Widget bottomNavigationBar;
  final Widget drawer;
  final Widget endDrawer;
  final Widget floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != ''
          ? AppBar(
              centerTitle: true,
              title: Text(title),
              bottom: tabBar,
            )
          : null,
      body: body != null
          ? body
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              child: child,
            ),
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: floatingActionButton,
    );
  }
}
