import 'package:flutter/material.dart';

import '../../components/List.dart';

class Images extends StatelessWidget {
  Images({Key key, this.children}) : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;

  @override
  Widget build(BuildContext context) {
    return Lister(
      title: "Images",
      children: children,
    );
  }
}
