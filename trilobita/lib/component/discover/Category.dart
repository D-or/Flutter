import 'package:flutter/material.dart';

class _Item {
  _Item({
    this.name,
    this.avatar,
    this.category,
    this.grade
  });

  final String name;
  final String avatar;
  final String category;
  final String grade;
}

class Category extends StatefulWidget {
  Category({Key key, this.tag, this.list}) : super(key: key);

  final String tag;
  final List list;

  @override
  CategoryState createState() => new CategoryState();
}

class CategoryState extends State<Category> {
  var _list = new List<_Item>();

  @override
  void initState() {
    super.initState();

    _formatData();
  }

  _formatData() {
    var list = new List<_Item>();

    print(widget.list);

    widget.list.forEach((item) {
      list.add(
        new _Item(
          name: item['Name'],
          avatar: item['Avatar'],
          category: item['Category'],
          grade: item['Grade'].toString()
        )
      );
    });

    setState(() {
      _list = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Builder(
      //builder：调用获取控件
      builder: (BuildContext context) {
        return new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 10.0, 0.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    widget.tag,
                    style: new TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 0.92)
                    )
                  ),
                  new Text("More",
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: const Color.fromRGBO(18, 185, 201, 1.0)
                    )
                  )
                ],
              ),
            ),
            new Container(
              height: 184.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: _list.map((_Item item) {
                  return new Container(
                    height: 184.0,
                    width: 130.0,
                    margin: const EdgeInsets.only(left: 10.0, top: 6.0),
                    child: new Card(
                      child: new Container(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Image.network(item.avatar, scale: 2.5),
                            new Container(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Text(
                                item.name,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis
                              )
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                  item.category,
                                  style: new TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12.0
                                  )
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Container(
                                      padding: const EdgeInsets.only(right: 2.0),
                                      child: new Icon(
                                        Icons.stars,
                                        size: 16.0,
                                        color: const Color.fromRGBO(18, 185, 201, 1.0)
                                      )
                                    ),
                                    new Text(
                                      item.grade,
                                      style: new TextStyle(
                                        color: Colors.black45,
                                        fontSize: 12.0
                                      )
                                    )
                                  ]
                                )
                              ]
                            )
                          ]
                        )
                      )
                    )
                  );
                }).toList()
              )
            )
          ]
        );
      }
    );
  }
}
