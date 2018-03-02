import 'package:flutter/material.dart';

class Forums extends StatefulWidget {
  @override
  ForumsState createState() => new ForumsState();
}

class _Forum {
  _Forum({
    this.avatar,
    this.title
  });
  final String avatar;
  final String title;
}

final List<_Forum> _images = <_Forum>[
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap"),
  new _Forum(avatar: "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png", title: "TapTap")
];

class ForumsState extends State<Forums> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Forums"),
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.alarm, color: Colors.white),
            tooltip: 'Alarm',
            onPressed: null
          ),
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            tooltip: 'Search',
            onPressed: null
          )
        ]
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Official forums',
                  style: new TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
                new Icon(Icons.chevron_right)
              ]
            )
          ),
          new Expanded(
            child: new GridView.count(
              primary: false,
              padding: const EdgeInsets.all(16.0),
              childAspectRatio: 3.0,
              crossAxisSpacing: 0.0,
              crossAxisCount: 2,
              children: _images.map((_Forum forum) {
                return new Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: new BoxDecoration(
                    border: new Border(
                      top: const BorderSide(
                        width: 0.5,
                        color: Colors.black12
                      )
                    )
                  ),
                  child: new Row(
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundColor: Colors.black12,
                        backgroundImage: new NetworkImage(forum.avatar)
                      ),
                      new Flexible(
                        child: new Container(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: new Text(
                            forum.title,
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis
                          )
                        )
                      )
                    ]
                  )
                );
              }).toList()
            )
          )
        ]
      )
    );
  }
}
