import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_BottomNavigationBar extends StatefulWidget {
  H_BottomNavigationBar({Key key}) : super(key: key);

  H_BottomNavigationBarState createState() => H_BottomNavigationBarState();
}

class H_BottomNavigationBarState extends State<H_BottomNavigationBar> {
  int currentIndex = 0;

  void onTap(int i) {
    setState(() {
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'BottomNavigationBar',
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // type: BottomNavigationBarType.shifting,
        iconSize: 28.0,
        fixedColor: Color.fromRGBO(18, 185, 201, 1.0),
        onTap: onTap,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_off),
            title: Text('Alarm'),
            activeIcon: Icon(Icons.alarm_on),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_down),
            title: Text('Arrow Drop'),
            activeIcon: Icon(Icons.arrow_drop_up),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_low),
            title: Text('Brightness'),
            activeIcon: Icon(Icons.brightness_high),
          ),
        ],
      ),
    );
  }
}
