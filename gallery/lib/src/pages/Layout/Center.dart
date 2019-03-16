import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Center extends StatelessWidget {
  H_Center({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Center'),
      ),
      body: Center(
        child: Text(
          'Center',
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}
