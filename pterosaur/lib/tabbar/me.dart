import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  @override
  _MeState createState() => new _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        padding: const EdgeInsets.only(left: 22.0, top: 80.0, right: 22.0),
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    '姓',
                    style: new TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  new Text(
                    'View and edit profile',
                    style: new TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100
                    )
                  )
                ]
              ),

              new Container(
                height: 70.0,
                width: 70.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffefefef)
                )
              )
            ]
          ),

          new Container(
            padding: const EdgeInsets.only(top: 30.0),
            child: new Text(
              'Just 4 steps left',
              style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w200
              )
            )
          ),

          new Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Container(
                    height: 44.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xffff6347),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(6.0),
                        bottomLeft: const Radius.circular(6.0)
                      ),
                    )
                  ),
                ),

                new Expanded(
                  flex: 5,
                  child: new Container(
                    height: 44.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xffefefef),
                      borderRadius: new BorderRadius.only(
                        topRight: const Radius.circular(6.0),
                        bottomRight: const Radius.circular(6.0)
                      ),
                    )
                  ),
                )
              ],
            ),
          ),

          new Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: new Text(
              'We ask everyone for a few details before traveling or hosting, so get a head start by doing it now',
              softWrap: true,
              style: new TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w200
              )
            ),
          ),

          // 通知
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Notifications',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.notifications_none,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 旅程
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Trips',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.airplanemode_active,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 邀请好友
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Invite friends',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.group_add,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 旅行基金与优惠券
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Credits & coupons',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.credit_card,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 设置
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Settings',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.settings,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 获得帮助
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Get help',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.help_outline,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 成为房东
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Become a host',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.home,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ],
            ),
          ),

          // 向我们反馈
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            decoration: new BoxDecoration(
              border: new Border(
                top: new BorderSide(
                  color: const Color(0xffdddddd)
                )
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Give us feedback',
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                    color: const Color(0xff3f3f3f)
                  )
                ),

                new Icon(
                  Icons.feedback,
                  size: 30.0,
                  color: const Color(0xffaaaaaa)
                )
              ]
            )
          )
        ]
      )
    );
  }
}
