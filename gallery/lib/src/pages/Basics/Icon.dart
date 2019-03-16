import 'package:flutter/material.dart';

import '../../constant/icons.dart';

class H_Icon extends StatelessWidget {
  H_Icon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            physics: new NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 2.0,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            padding: EdgeInsets.all(8.0),
            children: icons
                .map((item) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200]),
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          color: Colors.grey[100],
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Colors.black12,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 6.0),
                            child: Icon(item['icon']),
                          ),
                          Text(
                            item['name'],
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
