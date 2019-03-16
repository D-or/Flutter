import 'dart:math';
import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedBuilder extends StatefulWidget {
  @override
  H_AnimatedBuilderState createState() => H_AnimatedBuilderState();
}

class H_AnimatedBuilderState extends State<H_AnimatedBuilder> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedBuilder',
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: Container(
            width: 160.0,
            height: 160.0,
            color: Theme.of(context).primaryColor,
          ),
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(
              angle: controller.value * 2.0 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
