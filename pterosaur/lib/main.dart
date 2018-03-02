import 'package:flutter/material.dart';
import 'package:pterosaur/tabbar/saved.dart';
import 'package:pterosaur/tabbar/explore.dart';
import 'package:pterosaur/tabbar/stories.dart';
import 'package:pterosaur/tabbar/inbox.dart';
import 'package:pterosaur/tabbar/me.dart';

void main() {
  runApp(new TabBar());
}

final ThemeData theme = new ThemeData(brightness: Brightness.light, primarySwatch: Colors.blue);

class TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      theme: theme,
      home: new Page()
    );
  }
}

class Page extends StatefulWidget {
  Page({Key key}) : super(key: key);

  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<Page> {
  int _index = 0;
  Widget page = new Explore();

  void _bottomNavigateTo(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_index) {
      case 0:
        page = new Explore();
        break;

      case 1:
        page = new Saved();
        break;

      case 2:
        page = new Stories();
        break;

      case 3:
        page = new Inbox();
        break;

      case 4:
        page = new Me();
        break;

      default:
        break;
    }

    return new Scaffold(
      body: page,
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(icon: new Icon(Icons.search), title: new Text('EXPLORE', style: new TextStyle(fontSize: 10.0))),
          new BottomNavigationBarItem(icon: new Icon(Icons.free_breakfast), title: new Text('SAVED', style: new TextStyle(fontSize: 10.0))),
          new BottomNavigationBarItem(icon: new Icon(Icons.straighten), title: new Text('STORIES', style: new TextStyle(fontSize: 10.0))),
          new BottomNavigationBarItem(icon: new Icon(Icons.chat_bubble_outline), title: new Text('INBOX', style: new TextStyle(fontSize: 10.0))),
          new BottomNavigationBarItem(icon: new Icon(Icons.person_outline), title: new Text('ME', style: new TextStyle(fontSize: 10.0))),
        ],
        onTap: _bottomNavigateTo,
        type: BottomNavigationBarType.fixed,
        iconSize: 28.0,
        fixedColor: const Color(0xffff6347)
      )
    );
  }
}
