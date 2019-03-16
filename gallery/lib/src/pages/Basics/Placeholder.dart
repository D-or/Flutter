import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Placeholder extends StatelessWidget {
  H_Placeholder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: "Placeholder",
      child: Placeholder(
        strokeWidth: 0.5,
      ),
    );
  }
}
