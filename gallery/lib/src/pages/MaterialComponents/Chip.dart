import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Chip extends StatelessWidget {
  H_Chip({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Chip',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Chip(
            label: Text('This is a Label.'),
            avatar: Icon(Icons.camera_alt),
            deleteIcon: Icon(Icons.delete),
            deleteIconColor: Color.fromRGBO(18, 185, 201, 1.0),
            deleteButtonTooltipMessage: 'Delete',
            onDeleted: () {
              print('Delete');
            },
            backgroundColor: Colors.grey[50],
          ),
        ),
      ),
    );
  }
}
