import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'dart:async';

class Detail extends StatefulWidget {
  Detail({
    Key key,
    this.name,
    this.avatar,
    this.category,
    this.grade,
    this.image,
    this.desc,
    this.developer,
    this.tag,
    this.webView
  }) : super(key: key);

  final String name;
  final String avatar;
  final List category;
  final String grade;
  final String image;
  final String desc;
  final String developer;
  final String tag;
  final String webView;

  @override
  DetailState createState() => new DetailState();
}

final markdown = """
  # 其实上面是 Markdown 格式...
  ## 真的不骗你...
  ### 不信你看...
  - 哈哈哈
  - 哈哈
  - 哈
  ```
    var string = 'Hello world!';
    print(string);
  ```
""";

class DetailState extends State<Detail>{
  bool isShow = false;
  bool isWebView = true;

  @override
  void initState() {
    super.initState();

    _formatData();
  }

  _formatData() {
    new Timer(const Duration(seconds: 1), () {
      setState(() {
        isShow = true;
      });
    });
  }

  _onChangeView() {
    setState(() {
      isShow = false;
      isWebView = !isWebView;
    });

    new Timer(const Duration(seconds: 1), () {
      setState(() {
        isShow = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isShow ? isWebView ? new WebviewScaffold(
      url: widget.webView,
      appBar: new AppBar(
        title: new Text("Detail"),
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(isWebView ? Icons.radio_button_checked : Icons.radio_button_unchecked, color: Colors.white),
            tooltip: 'Alarm',
            onPressed: _onChangeView
          )
        ]
      )
    ) : new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail"),
        backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(isWebView ? Icons.radio_button_checked : Icons.radio_button_unchecked, color: Colors.white),
            tooltip: 'Alarm',
            onPressed: _onChangeView
          )
        ]
      ),
      body: new Container(
        decoration: new BoxDecoration(
          color: const Color(0x05000000)
        ),
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 212.0,
              child: new Image.network(
                widget.image,
                fit: BoxFit.contain
              )
            ),
            new Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    decoration: new BoxDecoration(
                      color: Colors.white
                    ),
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          height: 64.0,
                          margin: const EdgeInsets.only(right: 10.0),
                          child: new Image.network(
                            widget.avatar
                          )
                        ),
                        new Expanded(
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                widget.name,
                                style: new TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis
                              ),
                              new Text(
                                'Developer: ${widget.developer}',
                                style: new TextStyle(
                                  fontSize: 13.0,
                                  color: const Color.fromRGBO(18, 185, 201, 1.0)
                                )
                              ),
                              new Text(
                                'Tag: ${widget.tag}',
                                style: new TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black45
                                )
                              )
                            ]
                          )
                        ),
                        new Container(
                          height: 56.0,
                          width: 56.0,
                          decoration: new BoxDecoration(
                            border: new Border.all(
                              width: 2.0,
                              color: Colors.black26
                            ),
                            borderRadius: new BorderRadius.all(new Radius.circular(30.0))
                          ),
                          child: new CircleAvatar(
                            backgroundColor: const Color.fromRGBO(18, 185, 201, 1.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                  'TapTap',
                                  style: new TextStyle(
                                    fontSize: 8.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  )
                                ),
                                new Text(
                                  widget.grade,
                                  style: new TextStyle(
                                    color: Colors.white
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ]
                    )
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                      color: Colors.white
                    ),
                    margin: const EdgeInsets.only(bottom: 8.0),
                    padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                    child: new Row(
                      children: widget.category.map((dynamic item) {
                        return new Container(
                          margin: const EdgeInsets.all(6.0),
                          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 12.0),
                          decoration: new BoxDecoration(
                            color: const Color(0x0F000000),
                            borderRadius: new BorderRadius.all(new Radius.circular(4.0))
                          ),
                          child: new Text(
                            item,
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54
                            )
                          )
                        );
                      }).toList()
                    )
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                      color: Colors.white
                    ),
                    margin: const EdgeInsets.only(bottom: 8.0),
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    child: new Column(
                      children: <Widget>[
                        new MarkdownBody(
                          data: widget.desc
                        ),
                        new Container(
                          decoration: new BoxDecoration(
                            border: new Border(
                              top: new BorderSide(
                                width: 0.5,
                                color: Colors.black12
                              )
                            )
                          ),
                          padding: const EdgeInsets.only(top: 10.0),
                          margin: const EdgeInsets.only(top: 10.0),
                          child: new MarkdownBody(
                            data: markdown
                          )
                        )
                      ]
                    )
                  )
                ]
              )
            )
          ],
        )
      )
    ) : new Center(
      child: new Container(
        height: 100.0,
        width: 100.0,
        decoration: new BoxDecoration(
          color: Colors.black45,
          borderRadius: new BorderRadius.all(new Radius.circular(16.0))
        ),
        child: new Container(
          padding: const EdgeInsets.all(28.0),
          child: new CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation(Colors.white70),
            strokeWidth: 2.0,
          )
        )
      )
    );
  }
}
