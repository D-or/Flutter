import 'package:flutter/material.dart';
import './component/home/Timeline.dart';
import './component/home/Recommend.dart';
import './component/home/Video.dart';

import 'dart:io';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

final List<String> _images = <String>[
  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1689489727,319363811&fm=27&gp=0.jpg",
  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1453867267,810067799&fm=27&gp=0.jpg",
  "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1897211572,1236994648&fm=27&gp=0.jpg",
  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=552608077,1384904804&fm=27&gp=0.jpg",
];

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _controller;
  List<Widget> _allPages = <Widget>[
    new Timeline(label: "Timeline", images: _images),
    new Container(),
    new Video(label: "Video", images: _images)
  ];
  bool isShow = false;

  @override
  void initState() {
    super.initState();

    _controller = new TabController(initialIndex: 1, vsync: this, length: _allPages.length);
    _getData();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  _getData() async {
    String recommendUrl = 'http://10.0.0.24:1228/taptap/recommend';
    String reviewUrl = 'http://10.0.0.24:1228/taptap/review';

    var recommends = new List();
    var reviews = new List();

    var allPages = _allPages;
    var httpClient = new HttpClient();

    try {
      var request = await httpClient.getUrl(Uri.parse(recommendUrl));
      var response = await request.close();

      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(UTF8.decoder).join();
        var data = JSON.decode(json);

        if (data['status'] == 0) {
          recommends = data['data'];

          allPages[1] = new Recommend(recommends: recommends);
        }
      }

      request = await httpClient.getUrl(Uri.parse(reviewUrl));
      response = await request.close();

      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(UTF8.decoder).join();
        var data = JSON.decode(json);

        if (data['status'] == 0) {
          reviews = data['data'];

          allPages[1] = new Recommend(recommends: recommends, reviews: reviews);
        }
      }
    } catch (e) {
      print(e);
    }

    setState(() {
      _allPages = allPages;
      isShow = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
        title: new Image.network(
          'https://assets.tapimg.com/img/logo_new.png',
          scale: 3.0
        ),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.notifications_none, color: Colors.white),
            tooltip: 'Alarm',
            onPressed: null
          ),
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            tooltip: 'Search',
            onPressed: null
          ),
        ],
        bottom: new TabBar(
          unselectedLabelColor: Colors.white30,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: <Widget>[
            new Tab(
              text: 'Timeline'
            ),
            new Tab(
              text: 'Recommend'
            ),
            new Tab(
              text: 'Video'
            ),
          ]
        )
      ),
      body: isShow ? new TabBarView(
        controller: _controller,
        children: _allPages.map((Widget page) {
          return page;
        }).toList()
      ) : new Center(
        child: new Container(
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            color: Colors.black45,
            borderRadius: new BorderRadius.all(new Radius.circular(16.0))
          ),
          child: new Container(
            padding: const EdgeInsets.all(28.0),
            child: new CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation(Colors.white70),
              strokeWidth: 2.0,
            )
          )
        )
      )
    );
  }
}
