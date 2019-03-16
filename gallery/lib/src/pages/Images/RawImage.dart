import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_RawImage extends StatelessWidget {
  H_RawImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'RawImage',
      child: Container(
        color: Colors.grey[200],
        child: RawImage(
          width: 200.0,
          height: 200.0,
          scale: 2.0,
        ),
      ),
    );
  }
}
