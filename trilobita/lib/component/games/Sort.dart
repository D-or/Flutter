import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  Sort({Key key, this.name, this.avatar, this.category, this.grade}) : super(key: key);

  final String name;
  final String avatar;
  final String category;
  final String grade;

  @override
  SortState createState() => new SortState();
}

class SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    return new Builder(
      //builder：调用获取控件
      builder: (BuildContext context) {
        return new Container(
          decoration: new BoxDecoration(
            border: const Border(
              bottom: const BorderSide(
                width: 0.5,
                color: Colors.black12
              )
            )
          ),
          padding: const EdgeInsets.all(14.0),
          child: new Row(
            children: <Widget>[
              new Container(
                height: 56.0,
                width: 114.0,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(3.0)),
                  image: new DecorationImage(
                    image: new NetworkImage(
                      widget.avatar
                    ),
                    fit: BoxFit.cover
                  )
                )
              ),
              new Flexible(
                child: new Container(
                  height: 60.0,
                  padding: const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 2.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Flexible(
                            child: new Text(
                              widget.name,
                              style: new TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 0, 0, 0.92)
                              ),
                              maxLines: 1,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis
                            )
                          ),
                          new Row(
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: new Icon(
                                  Icons.stars,
                                  size: 18.0,
                                  color: const Color.fromRGBO(18, 185, 201, 1.0)
                                )
                              ),
                              new Text(
                                widget.grade,
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black87
                                )
                              )
                            ],
                          )
                        ]
                      ),
                      new Flexible(
                        child: new Text(
                          widget.category,
                          style: new TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38
                          ),
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis
                        )
                      )
                    ]
                  )
                )
              )
            ]
          )
        );
      }
    );
  }
}
