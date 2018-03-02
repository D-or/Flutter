import 'package:flutter/material.dart';

import './Home.dart';
import './Games.dart';
import './Forums.dart';
import './Discover.dart';
import './Me.dart';

void main() {
  runApp(new TapTap());
}

class TapTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Main(),
      debugShowCheckedModeBanner: false
    );
  }
}

final List<BottomNavigationBarItem> _allPages = <BottomNavigationBarItem>[
  new BottomNavigationBarItem(
    icon: new Icon(Icons.library_books),
    title: new Text('Home')
  ),
  new BottomNavigationBarItem(
    icon: new Icon(Icons.inbox),
    title: new Text('Games')
  ),
  new BottomNavigationBarItem(
    icon: new Icon(Icons.border_all),
    title: new Text('Forum')
  ),
  new BottomNavigationBarItem(
    icon: new Icon(Icons.fingerprint),
    title: new Text('Blank')
  ),
  new BottomNavigationBarItem(
    icon: new Icon(Icons.person_outline),
    title: new Text('Me')
  ),
];

class Main extends StatefulWidget {
  @override
  MainState createState() => new MainState();
}

final List<Widget> _pages = <Widget>[
  new Home(),
  new Games(),
  new Forums(),
  new Discover(),
  new Me()
];

class MainState extends State<Main> {
  int _index;
  Widget _currentPage = _pages[0];

  void initState() {
    super.initState();

    _index = 0;
  }

  onTapTab(index) {
    setState(() {
      _index = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _currentPage,
      bottomNavigationBar: new BottomNavigationBar(
        items: _allPages,
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color.fromRGBO(18, 185, 201, 1.0),
        currentIndex: this._index,
        iconSize: 28.0,
        onTap: this.onTapTab
      )
    );
  }
}
