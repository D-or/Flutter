import 'package:flutter/material.dart';

import '../../components/List.dart';

class PaintingAndEffects extends StatelessWidget {
  PaintingAndEffects({Key key, this.children}) : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;

  @override
  Widget build(BuildContext context) {
    return Lister(
      title: "Painting And Effects",
      children: children,
    );
  }
}
