import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

import './component/games/Sort.dart';
import './Detail.dart';

/*
页面类
成员变量：标签名称、颜色、图标
成员函数：
  获取卡片标签颜色
  获取浮动按钮定义是否为空
  获取浮动按钮的颜色
  获取浮动按钮的图标
  获取浮动按钮的键值
 */
class _Page {
  _Page({
    this.label,
    this.icon,
  });
  final String label;
  final IconData icon;
}
//所有页面类的列表
final List<_Page> _allPages = <_Page>[
  new _Page(label: 'Download', icon: Icons.add),
  new _Page(label: 'IOS', icon: Icons.create),
  new _Page(label: 'New', icon: Icons.sort),
  new _Page(label: 'Played', icon: Icons.sort),
];

class _Game {
  _Game({
    this.name,
    this.avatar,
    this.category,
    this.grade,
    this.image,
    this.desc,
    this.developer,
    this.tag,
    this.webView
  });
  final String name;
  final String avatar;
  final String category;
  final String grade;
  final String image;
  final String desc;
  final String developer;
  final String tag;
  final String webView;
}

class Games extends StatefulWidget {
  @override
  GamesState createState() => new GamesState();
}

class GamesState extends State<Games> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _controller;
  List<List<_Game>> _games = new List<List<_Game>>();
  bool isShow = false;

  @override
  void initState() {
    super.initState();

    _controller = new TabController(vsync: this, length: _allPages.length);
    _getApps();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  _getApps() async {
    String baseUrl = 'http://10.0.0.24:1228/taptap/app/';
    List<String> tags = ["download", "ios", "new", "played"];
    String url;

    var _allGames = new List<List<_Game>>();
    var httpClient = new HttpClient();

    for (var tag in tags) {
      url = baseUrl + tag;

      try {
        var request = await httpClient.getUrl(Uri.parse(url));
        var response = await request.close();

        if (response.statusCode == HttpStatus.OK) {
          var json = await response.transform(UTF8.decoder).join();
          var data = JSON.decode(json);

          if (data['status'] == 0) {
            var result = new List();
            var games = new List<_Game>();

            result = data['data'];

            result.forEach((game) {
              String category = '';
              for (var i = 0; i < game['Category'].length; i++) {
                category = category + game['Category'][i];

                if (i != game['Category'].length - 1) {
                  category += ', ';
                }
              }

              games.add(
                new _Game(
                  name: game['Name'],
                  avatar: game['Avatar'],
                  category: category,
                  grade: game['Grade'].toString(),
                  image: game['Image'],
                  desc: game['Desc'],
                  developer: game['Developer'],
                  tag: game['Tag'],
                  webView: game['WebView']
                )
              );
            });

            _allGames.add(games);
          }
        }
      } catch (e) {
        print(e);
      }
    }

    setState(() {
      _games = _allGames;
      isShow = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Games"),
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.alarm, color: Colors.white),
            tooltip: 'Alarm',
            onPressed: _getApps
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
          tabs: _allPages.map((_Page page) {
            return new Tab(
              text: page.label,
            );
          }).toList()
        )
      ),
      body: isShow ? new TabBarView(
        controller: _controller,
        children: _games.map((List<_Game> games) {
          return games.length != 0 ? new Container(
            decoration: new BoxDecoration(
              color: Colors.white
            ),
            child:
            new ListView(
              children: games.map((_Game game) {
                return new GestureDetector(
                  child: new Sort(name: game.name, avatar: game.avatar, category: game.category, grade: game.grade),
                  onTap: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) => new Detail(
                          name: game.name,
                          avatar: game.avatar,
                          grade: game.grade,
                          category: game.category.replaceAll(new RegExp(' '), '').split(','),
                          image: game.image,
                          desc: game.desc,
                          developer: game.developer,
                          tag: game.tag,
                          webView: game.webView
                        )
                      )
                    );
                  },
                );
              }).toList()
            )
          ) :
          new Flexible(
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.white
              )
            )
          );
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
