import 'package:flutter/material.dart';

import '../../components/List.dart';

class Cupertino_iOS extends StatelessWidget {
  Cupertino_iOS({Key key, this.children}) : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;

  @override
  Widget build(BuildContext context) {
    return Lister(
      title: "Cupertino (iOS-style widgets)",
      children: children,
    );
  }
}
