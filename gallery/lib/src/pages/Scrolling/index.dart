import 'package:flutter/material.dart';

import '../../components/List.dart';

class Scrolling extends StatelessWidget {
  Scrolling({Key key, this.children}) : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;

  @override
  Widget build(BuildContext context) {
    return Lister(
      title: "Scrolling",
      children: children,
    );
  }
}
