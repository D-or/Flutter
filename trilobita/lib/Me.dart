import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

class _Operation {
  _Operation({
    this.title,
    this.number
  });

  final String number;
  final String title;
}

final List<_Operation> _allOperation = <_Operation> [
  new _Operation(title: 'Follow', number: '0'),
  new _Operation(title: 'Fans', number: '1'),
  new _Operation(title: 'Collection', number: '2')
];

class Me extends StatefulWidget {
  @override
  MeState createState() => new MeState();
}

class MeState extends State<Me> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _controller;
  File avatar;

  @override
  void initState() {
    super.initState();

    _controller = new TabController(initialIndex: 1, vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  _getImage() async {
    var image = await ImagePicker.pickImage();

    setState(() {
      avatar: image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Me"),
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.send, color: Colors.white),
            tooltip: 'Alarm',
            onPressed: null
          ),
          new IconButton(
            icon: new Icon(Icons.settings, color: Colors.white),
            tooltip: 'Search',
            onPressed: null
          ),
        ]
      ),
      body: new Container(
        decoration: new BoxDecoration(
          color: const Color(0xFFF5F5F5)
        ),
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white
                ),
                margin: const EdgeInsets.only(bottom: 10.0),
                child: new Column(
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                        border: new Border(bottom: new BorderSide(
                          color: const Color(0xFFE0E0E0),
                          width: 0.5
                        )),
                      ),
                      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                width: 90.0,
                                height: 90.0,
                                margin: const EdgeInsets.only(right: 20.0, top: 2.0),
                                decoration: new BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                                  border: new Border.all(
                                    color: Colors.white12,
                                    width: 3.0
                                  ),
                                ),
                                child: new GestureDetector(
                                  onTap: _getImage,
                                  child: avatar != null ? new Image.file(avatar) : new CircleAvatar(
                                    backgroundColor: Colors.black12,
                                    backgroundImage: new NetworkImage('https://img3.tapimg.com/avatars/02f52468290a0b1656963f6522f93503.jpg?imageView2/1/w/300/q/80/format/jpg/interlace/1/ignore-error/1')
                                  )
                                )
                              ),
                              new Flexible(
                                child: new Container(
                                  height: 116.0,
                                  margin: const EdgeInsets.only(top: 8.0, right: 10.0),
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Row(
                                        children: <Widget>[
                                          new Text(
                                            '起个什么好呢',
                                            style: new TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black87
                                            ),
                                          ),
                                          new Container(
                                            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 9.0),
                                            margin: const EdgeInsets.only(left: 4.0),
                                            decoration: new BoxDecoration(
                                              color: const Color(0xFFC6C6C6),
                                              borderRadius: new BorderRadius.all(new Radius.circular(4.0))
                                            ),
                                            child: new Text(
                                              'Etiquette',
                                              style: new TextStyle(
                                                fontSize: 9.0,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.white70
                                              ),
                                            )
                                          )
                                        ],
                                      ),
                                      new Container(
                                        margin: const EdgeInsets.only(top: 4.0, bottom: 26.0),
                                        child: new Text(
                                          'ID:12345678',
                                          style: new TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45
                                          ),
                                        ),
                                      ),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: _allOperation.map((_Operation op) {
                                          return new Column(
                                            children: <Widget>[
                                              new Container(
                                                margin: const EdgeInsets.only(bottom: 4.0),
                                                child: new Text(
                                                  op.number,
                                                  style: new TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black87
                                                  ),
                                                )
                                              ),
                                              new Text(
                                                op.title,
                                                style: new TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black45
                                                ),
                                              )
                                            ],
                                          );
                                        }).toList()
                                      )
                                    ]
                                  )
                                )
                              )
                            ]
                          )
                        ]
                      )
                    ),
                    new Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              new Icon(
                                Icons.thumb_up,
                                size: 18.0,
                                color: const Color(0xFFC6C6C6)
                              ),
                              new Container(
                                padding: const EdgeInsets.only(left: 4.0, right: 16.0),
                                child: new Text("12",
                                  style: new TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black87
                                  )
                                )
                              ),
                              new Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: new Icon(
                                  Icons.extension,
                                  size: 18.0,
                                  color: const Color(0xFFC6C6C6)
                                )
                              ),
                              new Text("34",
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black87
                                )
                              )
                            ]
                          ),
                          new Container(
                            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                            margin: const EdgeInsets.only(left: 4.0),
                            decoration: new BoxDecoration(
                              color: const Color.fromRGBO(18, 185, 201, 1.0),
                              borderRadius: new BorderRadius.all(new Radius.circular(24.0))
                            ),
                            child: new Text(
                              'Edit profile',
                              style: new TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w200,
                                color: Colors.white
                              )
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                    bottom: const BorderSide(
                      color: const Color(0x0F000000),
                      width: 0.5
                    )
                  )
                ),
                child: new TabBar(
                  unselectedLabelColor: Colors.black45,
                  labelColor: const Color.fromRGBO(18, 185, 201, 1.0),
                  indicatorColor: const Color.fromRGBO(18, 185, 201, 1.0),
                  controller: _controller,
                  tabs: <Widget>[
                    new Tab(
                      text: 'Review'
                    ),
                    new Tab(
                      text: 'Post'
                    ),
                    new Tab(
                      text: 'Played'
                    )
                  ]
                )
              ),
              new Container(
                height: 220.0,
                child: new TabBarView(
                  controller: _controller,
                  children: [1, 2, 3].map((int i) {
                    return new Container(
                      height: 220.0,
                      decoration: new BoxDecoration(
                        color: Colors.white
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.move_to_inbox,
                            color: Colors.black12,
                            size: 100.0
                          ),
                          new Text(
                            'No contents',
                            style: new TextStyle(
                              color: Colors.black38,
                              fontSize: 12.0
                            ),
                          )
                        ]
                      )
                    );
                  }).toList()
                )
              )
            ]
          )
        )
      )
    );
  }
}
