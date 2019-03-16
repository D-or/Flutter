import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedCrossFade extends StatelessWidget {
  H_AnimatedCrossFade({Key key}) : super(key: key);
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedCrossFade',
      child: AnimatedCrossFade(
        duration: const Duration(seconds: 3),
        firstChild:
            const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
        secondChild:
            const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
        crossFadeState:
            _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
