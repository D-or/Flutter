import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';

var httpClient = createHttpClient();

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => new _StoriesState();
}

class _StoriesState extends State<Stories> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 7, vsync: this);
  }

  _onRefresh() async {
    await httpClient.get('https://api.github.com/search/repositories?q=stars:>100000&q=language:go&sort=stars');

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0
                )
              ],
              color: Colors.white
            ),
            child: new Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(right: 30.0, bottom: 26.0, top: 30.0),
                  child: new Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.black87,
                      )
                    ],
                  )
                ),

                new TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: const Color(0xff5cb0a4),
                  indicatorColor: const Color(0xff5cb0a4),
                  unselectedLabelColor: Colors.black87,
                  labelStyle: new TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600
                  ),
                  unselectedLabelStyle: new TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600
                  ),
                  tabs: <Widget>[
                    new Tab(text: '精选故事'),
                    new Tab(text: '房源'),
                    new Tab(text: '景点'),
                    new Tab(text: '美食'),
                    new Tab(text: '文化'),
                    new Tab(text: '城市'),
                    new Tab(text: '活动')
                  ]
                )
              ],
            ),
          ),

          new Container(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            height: 483.0,
            child: new RefreshIndicator(
              color: Colors.black,
              child: new ListView(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                children: <Widget>[
                  new Row(
                    children: [1, 2, 3].map((int item) {
                      return new Expanded(
                        child: new Container(
                          height: 100.0,
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(const Radius.circular(6.0)),
                            shape: BoxShape.rectangle,
                            color: const Color(0xffefefef)
                          )
                        )
                      );
                    }).toList()
                  ),

                  new Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: new Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [1, 2, 3, 4, 5, 6, 7].map((int item) {
                        return new Container(
                          width: 148.0,
                          margin: const EdgeInsets.fromLTRB(6.5, 0.0, 6.5, 16.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                height: 148.0,
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.all(const Radius.circular(6.0)),
                                  shape: BoxShape.rectangle,
                                  color: const Color(0xffefefef)
                                )
                              ),

                              new Container(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: new Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      '澳大利亚',
                                      style: new TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0
                                      )
                                    )
                                  ],
                                )
                              ),

                              new Text(
                                '温暖的家园',
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: new TextStyle(
                                  fontSize: 12.0
                                ),
                              ),

                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    margin: const EdgeInsets.only(top: 4.0),
                                    height: 22.0,
                                    width: 22.0,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xffefefef)
                                    )
                                  ),

                                  new Container(
                                    padding: const EdgeInsets.only(left: 14.0, right: 4.0),
                                    child: new Icon(
                                      Icons.thumb_up,
                                      size: 14.0,
                                      color: Colors.black54
                                    )
                                  ),

                                  new Text(
                                    '0',
                                    style: new TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.black54
                                    )
                                  ),

                                  new Container(
                                    padding: const EdgeInsets.only(left: 10.0, right: 4.0),
                                    child: new Icon(
                                      Icons.chat_bubble,
                                      size: 14.0,
                                      color: Colors.black54
                                    )
                                  ),

                                  new Text(
                                    '0',
                                    style: new TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.black54
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        );
                      }).toList()
                    )
                  )
                ]
              ),
              onRefresh: _onRefresh
            )
          )
        ]
      ),

      floatingActionButton: new Stack(
        children: <Widget>[
          new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: new Color(0xffff6347),
            onPressed: null
          )
        ]
      )
    );
  }
}
