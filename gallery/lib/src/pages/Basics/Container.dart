import 'package:flutter/material.dart';

class H_Container extends StatelessWidget {
  H_Container({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[200],
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(4.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                    ),
                  ],
                  color: Colors.grey[100]),
              child: Center(
                child: Text('Container'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
