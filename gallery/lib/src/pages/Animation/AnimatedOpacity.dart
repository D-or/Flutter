import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedOpacity extends StatefulWidget {
  @override
  H_AnimatedOpacityState createState() => H_AnimatedOpacityState();
}

class H_AnimatedOpacityState extends State<H_AnimatedOpacity> {
  double opacityLevel = 1.0;

  void changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedOpacity',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 5),
              child: FlutterLogo(
                size: 100,
              ),
            ),
            RaisedButton(
              child: Text('Fade Logo'),
              onPressed: changeOpacity,
            ),
          ],
        ),
      ),
    );
  }
}
