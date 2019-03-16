import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({Key key, this.title, this.desc, this.page}) : super(key: key);

  final String title;
  final String desc;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => page),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.0),
        padding: EdgeInsets.only(top: 8.0, bottom: 12.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.6,
              color: Colors.black12,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 1.0, left: 2.0),
              child: Text(
                desc,
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
