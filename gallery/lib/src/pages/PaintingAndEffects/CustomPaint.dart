import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_CustomPaint extends StatelessWidget {
  H_CustomPaint({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'CustomPaint',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
          child: CustomPaint(
            // painter: Sky(),
            child: Center(
              child: Text(
                'Once upon a time...',
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
