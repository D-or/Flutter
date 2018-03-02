import 'package:flutter/material.dart';

class _Recommend {
  _Recommend({
    this.name,
    this.avatar,
    this.image,
    this.desc,
    this.grade,
    this.comments
  });
  final String name;
  final String avatar;
  final String desc;
  final String image;
  final String grade;
  final String comments;
}

class _Review {
  _Review({
    this.app,
    this.appAvatar,
    this.userName,
    this.detail,
    this.vote
  });
  final String app;
  final String appAvatar;
  final String userName;
  final String detail;
  final String vote;
}

class Recommend extends StatefulWidget {
  Recommend({Key key, this.recommends, this.reviews}) : super(key: key);

  final List recommends;
  final List reviews;

  @override
  RecommendState createState() => new RecommendState();
}

class RecommendState extends State<Recommend> {
  var _recommends = new List<_Recommend>();
  var _reviews = new List<_Review>();

  @override
  void initState() {
    super.initState();

    _formatData();
  }

  _formatData() {
    var recommends = new List<_Recommend>();
    var reviews = new List<_Review>();

    widget.recommends.forEach((recommend) {
      recommends.add(
        new _Recommend(
          name: recommend['Name'],
          avatar: recommend['Avatar'],
          image: recommend['Image'],
          grade: recommend['Grade'].toString(),
          comments: recommend['Comments'].toString(),
          desc: recommend['Desc']
        )
      );
    });

    widget.reviews.forEach((review) {
      reviews.add(
        new _Review(
          app: review['App'],
          appAvatar: review['AppAvatar'],
          userName: review['UserName'],
          detail: review['Detail'],
          vote: review['Vote'].toString()
        )
      );
    });

    setState(() {
      _recommends = recommends;
      _reviews = reviews;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Builder(
      //builder：调用获取控件
      builder: (BuildContext context) {
        return new ListView(
          //创建质感设计卡片
          children: <Widget>[
            new Column(
              children: _recommends.map((_Recommend recommend) {
                return new Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                  child: new Card(
                    child: new Column(
                      children: <Widget>[
                        new Image.network(recommend.image),
                        new Container(
                          padding: const EdgeInsets.all(12.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                recommend.name,
                                style: new TextStyle(
                                  fontSize: 20.0,
                                  color: const Color.fromRGBO(0, 0, 0, 0.92)
                                )
                              ),
                              new Container(
                                padding: const EdgeInsets.only(top: 2.0, bottom: 12.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text(
                                      'From editor\'s choice',
                                      style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black54
                                      )
                                    ),
                                    new Row(
                                      children: <Widget>[
                                        new Container(
                                          child: new Text(
                                            '${recommend.comments} reviews',
                                            style: new TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black54
                                            )
                                          )
                                        ),
                                        new Container(
                                          padding: const EdgeInsets.only(left: 8.0, right: 2.0),
                                          child: new Icon(
                                            Icons.stars,
                                            size: 18.0,
                                            color: const Color.fromRGBO(18, 185, 201, 1.0)
                                          )
                                        ),
                                        new Text(
                                          recommend.grade,
                                          style: new TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ),
                              new Text(
                                recommend.desc,
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis
                              )
                            ]
                          )
                        )
                      ]
                    )
                  )
                );
              }).toList()
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 10.0, 6.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text("Reviews",
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
              height: 150.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: _reviews.map((_Review review) {
                  return new Container(
                    height: 150.0,
                    width: 300.0,
                    margin: const EdgeInsets.only(left: 16.0),
                    child: new Card(
                      child: new Container(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //创建质感设计卡片
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Image.network(review.appAvatar, scale: 2.5),
                                new Expanded(
                                  child: new Container(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: new Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          review.app,
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          style: new TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(0, 0, 0, 0.92),
                                          )
                                        ),
                                        new Row(
                                          children: <Widget>[
                                            new Icon(Icons.star, color: const Color.fromRGBO(18, 185, 201, 1.0), size: 16.0),
                                            new Icon(Icons.star, color: const Color.fromRGBO(18, 185, 201, 1.0), size: 16.0),
                                            new Icon(Icons.star, color: const Color.fromRGBO(18, 185, 201, 1.0), size: 16.0),
                                            new Icon(Icons.star, color: const Color.fromRGBO(18, 185, 201, 1.0), size: 16.0),
                                            new Icon(Icons.star, color: const Color.fromRGBO(18, 185, 201, 1.0), size: 16.0)
                                          ]
                                        )
                                      ]
                                    )
                                  )
                                )
                              ]
                            ),
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  review.detail,
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    color: const Color.fromRGBO(0, 0, 0, 0.9)
                                  ),
                                  maxLines: 2,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis
                                )
                              ],
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.thumb_up,
                                      color: Colors.grey,
                                      size: 18.0
                                    ),
                                    new Container(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: new Text(
                                        review.vote,
                                        style: new TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0
                                        )
                                      )
                                    )
                                  ],
                                ),
                                new Text(
                                  '— ${review.userName}',
                                  style: new TextStyle(
                                    fontSize: 16.0,
                                    color: const Color.fromRGBO(0, 0, 0, 0.92)
                                  )
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
          ],
        );
      }
    );
  }
}
