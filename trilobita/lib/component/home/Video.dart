import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  Video({Key key, this.label, this.images}) : super(key: key);

  final String label;
  final List<String> images;

  @override
  VideoState createState() => new VideoState();
}

class VideoState extends State<Video> {
  VideoPlayerController _controller;
  bool _isPlaying = false;

  void initState() {
    super.initState();
    _controller = new VideoPlayerController(
      'http://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_20mb.mp4',
    )
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
          });
        }
      })
      ..initialize();
  }

  void _onControlVideo() {
    _controller.value.isPlaying ? _controller.pause : _controller.play;
  }

  @override
  Widget build(BuildContext context) {
    return new Builder(
      //builder：调用获取控件
      builder: (BuildContext context) {
        return new Container(
          decoration: new BoxDecoration(
            color: const Color(0xFFF5F5F5)
          ),
          child: new ListView(
            children: <Widget>[
              new Column(
                children: widget.images.map((String image) {
                  return new Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: new BoxDecoration(
                      color: Colors.white
                    ),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.all(20.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //创建质感设计卡片
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Image.network(
                                    "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png",
                                    scale: 13.0
                                  ),
                                  new Flexible(
                                    child: new Container(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              new Text(widget.label,
                                                style: new TextStyle(
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromRGBO(0, 0, 0, 0.92)
                                                )
                                              ),
                                              new IconButton(icon: new Icon(Icons.more_horiz, color: Colors.grey), onPressed: this._onControlVideo)
                                            ]
                                          ),
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              new Text("Editor's choice",
                                                style: new TextStyle(
                                                  fontSize: 13.0,
                                                  color: Colors.black87
                                                )
                                              ),
                                              new Text("266 plays",
                                                style: new TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black54
                                                )
                                              )
                                            ]
                                          )
                                        ]
                                      )
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        ),
                        new Container(
                          decoration: new BoxDecoration(
                            color: const Color(0xFFF5F5F5)
                          ),
                          child: new AspectRatio(
                            aspectRatio: 1280 / 720,
                            child: new VideoPlayer(_controller),
                          )
                        ),
                        new Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                "这是一段话，特别简单的话，你可以无视他，也可以重视他，但是他真的无关紧要",
                                style: new TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.96)
                                )
                              ),
                              new Container(
                                padding: const EdgeInsets.only(top: 6.0, bottom: 12.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("From",
                                      style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black54
                                      ),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis
                                    ),
                                    new Container(
                                      padding: const EdgeInsets.only(left: 8.0, right: 2.0),
                                      child: new Image.network(
                                        "https://img.tapimg.com/market/images/dcaacad6231ac7003cf1b62b6643c450.png",
                                        height: 14.0,
                                        width: 14.0
                                      )
                                    ),
                                    new Text("Tap君",
                                      style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black54
                                      ),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis
                                    )
                                  ]
                                )
                              ),
                              new Container(
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text("1h ago",
                                      style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black54
                                      ),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis
                                    ),
                                    new Row(
                                      children: <Widget>[
                                        new Icon(
                                          Icons.thumb_up,
                                          size: 18.0,
                                          color: Colors.black54
                                        ),
                                        new Container(
                                          padding: const EdgeInsets.only(left: 6.0, right: 30.0),
                                          child: new Text("88",
                                            style: new TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black87
                                            )
                                          )
                                        ),
                                        new Container(
                                          padding: const EdgeInsets.only(right: 6.0),
                                          child: new Icon(
                                            Icons.comment,
                                            size: 18.0,
                                            color: Colors.black54
                                          )
                                        ),
                                        new Text("88",
                                          style: new TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87
                                          )
                                        )
                                      ]
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        )
                      ]
                    )
                  );
                }).toList()
              )
            ]
          )
        );
      }
    );
  }
}
