import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_TextField extends StatelessWidget {
  H_TextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'TextField',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              children: <Widget>[
                TextField(
                  maxLines: 1,
                  maxLength: 10,
                  cursorWidth: 2.0,
                  cursorRadius: const Radius.circular(1.0),
                  keyboardType: TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  textCapitalization: TextCapitalization.characters,
                ),
                TextField(
                  maxLines: 1,
                  maxLength: 10,
                  cursorWidth: 2.0,
                  obscureText: true,
                  cursorRadius: const Radius.circular(1.0),
                  scrollPadding: EdgeInsets.symmetric(vertical: 4.0),
                  keyboardType: TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  textCapitalization: TextCapitalization.characters,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
