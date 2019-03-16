import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedContainer extends StatelessWidget {
  H_AnimatedContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedContainer',
      child: AnimatedContainer(
        color: Colors.grey[200],
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: Container(
          color: Colors.grey[100],
          height: 200,
          child: Text('AnimatedContainer'),
        ),
      ),
    );
  }
}
