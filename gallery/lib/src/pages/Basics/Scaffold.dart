import 'package:flutter/material.dart';

class H_Scaffold extends StatelessWidget {
  H_Scaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text('Body'),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "FloatingActionButton",
        onPressed: () {
          print("Added");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("casino"),
            icon: Icon(Icons.casino),
          ),
          BottomNavigationBarItem(
            title: Text("comment"),
            icon: Icon(Icons.comment),
          ),
          BottomNavigationBarItem(
            title: Text("airplay"),
            icon: Icon(Icons.airplay),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
    );
  }
}
