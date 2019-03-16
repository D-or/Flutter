import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DecoratedBox extends StatelessWidget {
  H_DecoratedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'DecoratedBox',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(-0.2, -0.6),
                radius: 0.4,
                colors: <Color>[
                  const Color(0x20C997FF),
                  const Color(0xFF111133),
                ],
                stops: <double>[0.2, 1.0],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
