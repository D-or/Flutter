import 'package:flutter/material.dart';

import '../../components/List.dart';

class Animation extends StatelessWidget {
  Animation({Key key, this.children}) : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;

  @override
  Widget build(BuildContext context) {
    return Lister(
      title: "Animation",
      children: children,
    );
  }
}
