import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Form extends StatelessWidget {
  H_Form({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Form',
      child: Container(
        color: Colors.grey[200],
        child: Form(
          child: Text('Form'),
          autovalidate: true,
          onChanged: () {
            print('onChanged');
          },
        ),
      ),
    );
  }
}
