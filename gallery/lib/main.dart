import 'package:flutter/material.dart';

import './src/constant/exhibits.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gallery',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(18, 185, 201, 1.0),
      ),
      home: Builder(
        builder: (ctx) {
          return new Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: GridView.count(
                    physics: new NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    padding: EdgeInsets.all(8.0),
                    children: exhibites.map((exhibite) {
                      final item = Exhibite.map(exhibite);

                      return new GestureDetector(
                        key: ValueKey(item.title),
                        onTap: () {
                          if (item.page != null) {
                            Navigator.push(
                              ctx,
                              MaterialPageRoute(
                                builder: (ctx) => item.page(item.children),
                              ),
                            );
                          }
                          print(item);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1.0, color: Colors.black12),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(4.0)),
                          ),
                          margin: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  item.title,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                item.desc,
                                style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Exhibite {
  final String title;
  final String desc;
  final Widget Function(List<Map<String, dynamic>>) page;
  final List<Map<String, dynamic>> children;

  Exhibite.map(Map<String, dynamic> exhibite)
      : assert(exhibite['title'] != null),
        assert(exhibite['desc'] != null),
        title = exhibite['title'],
        desc = exhibite['desc'],
        page = exhibite['page'],
        children = exhibite['children'];

  @override
  String toString() => "<Exhibite($title): $desc>";
}

class Child {
  final String title;
  final String desc;
  final Widget page;

  Child.map(Map<String, dynamic> child)
      : assert(child['title'] != null),
        title = child['title'],
        desc = child['desc'],
        page = child['page'];

  @override
  String toString() => "<Exhibite($title): $desc>";
}
