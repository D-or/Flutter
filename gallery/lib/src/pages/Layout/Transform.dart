import 'package:flutter/material.dart';
import 'dart:math';

import '../../components/Content.dart';

class H_Transform extends StatelessWidget {
  H_Transform({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Transform',
      body: Center(
        child: Container(
          color: Colors.grey[300],
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(-pi / 12.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}
