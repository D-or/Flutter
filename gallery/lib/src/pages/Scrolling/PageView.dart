import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_PageView extends StatelessWidget {
  H_PageView({Key key}) : super(key: key);

  final List<String> pages = ['I', 'am', 'stupid', 'as', 'you', '!'];

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'PageView',
      body: Container(
        margin: EdgeInsets.all(20.0),
        color: Colors.grey[200],
        child: PageView(
          children: pages
              .map((String page) => Center(
                    child: Text(
                      page,
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Futura Book',
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
