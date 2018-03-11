import 'package:flutter/material.dart';
import './component/discover/Category.dart';

import 'dart:io';
import 'dart:convert';

class _Discover {
  _Discover({
    this.tag,
    this.list
  });

  final String tag;
  final List list;
}

class Discover extends StatefulWidget {
  @override
  DiscoverState createState() => new DiscoverState();
}

class DiscoverState extends State<Discover>{
  var _discovery = new List<_Discover>();
  bool isShow = false;

  @override
  void initState() {
    super.initState();

    _getDiscovery();
  }

  _getDiscovery() async {
    String url = 'http://10.0.0.24:1228/taptap/discover';

    try {
      var httpClient = new HttpClient();
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();

      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(UTF8.decoder).join();
        var data = JSON.decode(json);

        if (data['status'] == 0) {
          var allDiscovery = new List<_Discover>();
          var result = new List();

          result = data['data'];

          result.forEach((item) {
            allDiscovery.add(new _Discover(
              tag: item["Tag"],
              list: item["List"]
            ));
          });

          setState(() {
            _discovery = allDiscovery;
          });
        }
      }
    } catch (e) {
      print(e);
    }

    setState(() {
      isShow = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Discover"),
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0)
      ),
      body: isShow ? new Container(
        child: new ListView(
          children: _discovery.map((_Discover item) {
            return new Category(tag: item.tag, list: item.list);
          }).toList()
        )
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
