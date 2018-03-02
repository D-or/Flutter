import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

var httpClient = createHttpClient();

class Explore extends StatefulWidget {
  @override
  ExploreState createState() => new ExploreState();
}

class ExploreState extends State<Explore> {
  var list = [];

  _onRefresh() async {
    var response = await httpClient.get('https://api.github.com/search/repositories?q=stars:>100000&q=language:go&sort=stars');
    Map data = JSON.decode(response.body);

    setState(() {
      list = data['items'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: const EdgeInsets.only(top: 30.0),
        child: new Column(
          children: <Widget>[
            // 顶部搜索栏
            new Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              margin: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 10.0),
              decoration: new BoxDecoration(
                border: new Border.all(color: const Color(0xffbbbbbb), width: 0.5),
                borderRadius: new BorderRadius.all(const Radius.circular(2.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.grey,
                    offset: Offset.zero,
                    blurRadius: 4.0
                  )
                ],
                color: Colors.white
              ),
              child: new Row(
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: new Icon(Icons.search, color: const Color(0xffcccccc))
                  ),
                  new Text(
                    'Try Paris',
                    style: new TextStyle(
                      fontFamily: 'Monoca', color: const Color(0xffcdcdcd),
                      fontSize: 16.0
                    )
                  )
                ]
              )
            ),

            new Container(
              height: 508.0,
              child: new RefreshIndicator(
                child: new ListView(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  children: <Widget>[
                    new Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.fromLTRB(26.0, 30.0, 26.0, 22.0),
                          child: new Text(
                            'Explore Airbnb',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0
                            ),
                          )
                        ),
                      ],
                    ),

                    new Container(
                      height: 120.0,
                      child: new ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        scrollDirection: Axis.horizontal,
                        children: list.map((item) {
                          return new Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6.0),
                            decoration: new BoxDecoration(
                              border: new Border.all(color: Colors.black87, width: 0.5),
                              borderRadius: new BorderRadius.all(const Radius.circular(2.0))
                            ),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Image.network(
                                  item['owner']['avatar_url'],
                                  scale: 12.0
                                ),
                                new Container(
                                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                                  child: new Text(
                                    item['full_name'],
                                    softWrap: true
                                  )
                                )
                              ]
                            )
                          );
                        }).toList()
                      )
                    ),

                    new Container(
                      padding: const EdgeInsets.fromLTRB(26.0, 30.0, 26.0, 22.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'Experiences',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0
                            )
                          ),

                          new Container(
                            child: new Text(
                              'See all >',
                              style: new TextStyle(
                                fontSize: 14.0
                              )
                            )
                          )
                        ]
                      )
                    ),

                    new Container(
                      height: 180.0,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        children: [1, 2, 3, 4].map((int item) {
                          return new Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Image.network('https://z0.muscache.com/im/pictures/66285187/1973c1a5_original.jpg?aki_policy=xx_large', scale: 10.0),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    'WINE TESTING',
                                    style: new TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffcd853f)
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: new Text(
                                    'Explore and taste...',
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    '\$125 per person',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w100
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    '★★★★☆ 131',
                                    style: new TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  )
                                )
                              ]
                            )
                          );
                        }).toList()
                      )
                    ),

                    new Container(
                      padding: const EdgeInsets.fromLTRB(26.0, 22.0, 26.0, 22.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'Homes',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0
                            )
                          ),

                          new Container(
                            child: new Text(
                              'See all >',
                              style: new TextStyle(
                                fontSize: 14.0
                              )
                            )
                          )
                        ]
                      )
                    ),

                    new Container(
                      height: 180.0,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        children: [1, 2, 3, 4].map((int item) {
                          return new Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Image.network('https://z0.muscache.com/im/pictures/66285187/1973c1a5_original.jpg?aki_policy=xx_large', scale: 10.0),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    'WINE TESTING',
                                    style: new TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffcd853f)
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: new Text(
                                    'Explore and taste...',
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    '\$125 per person',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w100
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    '★★★★☆ 131',
                                    style: new TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  )
                                )
                              ]
                            )
                          );
                        }).toList()
                      )
                    ),

                    new Container(
                      padding: const EdgeInsets.fromLTRB(26.0, 22.0, 26.0, 22.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'Popular resercations',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0
                            )
                          ),

                          new Container(
                            child: new Text(
                              'See all >',
                              style: new TextStyle(
                                fontSize: 14.0
                              )
                            )
                          )
                        ]
                      )
                    ),

                    new Container(
                      height: 160.0,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        children: [1, 2, 3, 4].map((int item) {
                          return new Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Image.network('https://z0.muscache.com/im/pictures/66285187/1973c1a5_original.jpg?aki_policy=xx_large', scale: 10.0),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    'RESERVATION',
                                    style: new TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff00bfff)
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: new Text(
                                    'G\'raj Mahal',
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700
                                    )
                                  )
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: new Text(
                                    'About \$35 per person',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w100
                                    )
                                  )
                                )
                              ]
                            )
                          );
                        }).toList()
                      )
                    ),

                    new Container(
                      padding: const EdgeInsets.fromLTRB(26.0, 22.0, 26.0, 22.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'Featured destinations',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0
                            )
                          ),

                          new Container(
                            child: new Text(
                              'See all >',
                              style: new TextStyle(
                                fontSize: 14.0
                              )
                            )
                          )
                        ]
                      )
                    ),

                    new Container(
                      height: 170.0,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        children: [1, 2, 3, 4, 5, 6].map((int item) {
                          return new Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Image.network(
                                  'https://z0.muscache.com/airbnb/static/china_p1_redesign/London-30da04817ad236faedf36c3414306a2e.jpg',
                                  scale: 6.5
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: new Text(
                                    'London',
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700
                                    )
                                  )
                                )
                              ]
                            )
                          );
                        }).toList()
                      )
                    ),
                  ]
                ),
                onRefresh: _onRefresh
              )
            )
          ],
        )
      )
    );
  }
}
