import 'package:flutter/material.dart';

import '../../components/List.dart';

class Interaction extends StatelessWidget {
  Interaction({Key key, this.children}) : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;

  @override
  Widget build(BuildContext context) {
    return Lister(
      title: "Interaction",
      children: children,
    );
  }
}
