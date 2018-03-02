import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => new _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(24.0, 30.0, 30.0, 20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  child: new Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      new Icon(
                        Icons.inbox,
                        size: 20.0,
                        color: Colors.black87,
                      )
                    ],
                  )
                ),
                new Container(
                  child: new Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      new Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.black87,
                      )
                    ],
                  )
                )
              ]
            )
          ),

          new Container(
            height: 537.0,
            child: new ListView(
              padding: const EdgeInsets.fromLTRB(28.0, 30.0, 30.0, 20.0),
              children: <Widget>[
                new Text(
                  'Inbox',
                  style: new TextStyle(
                    fontSize: 28.0,
                    color: const Color(0xff3d3d3d),
                    fontWeight: FontWeight.bold
                  )
                ),

                new Container(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: new Text(
                    'You have no unread messages',
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xff3d3d3d),
                      fontWeight: FontWeight.w200
                    )
                  )
                ),

                new Column(
                  children: [1, 2, 3, 4, 5].map((int item) {
                    return new Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                            flex: 1,
                            child: new Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffefefef)
                              )
                            )
                          ),
                          new Expanded(
                            flex: 4,
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Container(
                                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                                  height: 50.0,
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          new Text(
                                            'Bowie',
                                            style: new TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff2b2b2b),
                                              fontSize: 16.0
                                            )
                                          ),

                                          new Text(
                                            '8 Jul',
                                            style: new TextStyle(
                                              fontWeight: FontWeight.w200,
                                              color: Colors.black87,
                                              fontSize: 15.0
                                            )
                                          )
                                        ]
                                      ),
                                      new Text(
                                        '是的',
                                        style: new TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: const Color(0xff4f4f4f),
                                          fontSize: 16.5
                                        )
                                      )
                                    ]
                                  )
                                ),
                                new Text(
                                  '60㎡日式极简猫奴Loft，30分钟直达世纪大道',
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: new TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xff6f6f6f),
                                    fontSize: 15.0
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: new Text(
                                    'Expired • 26 - 28 Jul 2017',
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: new TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xff6f6f6f),
                                      fontSize: 14.0
                                    )
                                  ),
                                )
                              ]
                            )
                          )
                        ]
                      )
                    );
                  }).toList()
                )
              ],
            ),
          )
        ]
      )
    );
  }
}
