import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Stack extends StatelessWidget {
  H_Stack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Stack',
      // child: Container(
      //   height: 400.0,
      //   color: Colors.grey[200],
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     children: <Widget>[
      //       Stack(
      //         alignment: AlignmentDirectional.bottomStart,
      //         textDirection: TextDirection.rtl,
      //         children: <Widget>[
      //           Text('Stack bottomStart'),
      //         ],
      //       ),
      //       Stack(
      //         alignment: AlignmentDirectional.bottomEnd,
      //         fit: StackFit.expand,
      //         children: <Widget>[
      //           Text('Stack bottomEnd'),
      //         ],
      //       ),
      //       Stack(
      //         alignment: AlignmentDirectional.topEnd,
      //         overflow: Overflow.clip,
      //         children: <Widget>[
      //           Text('Stack topEnd'),
      //         ],
      //       ),
      //       Stack(
      //         alignment: AlignmentDirectional.topStart,
      //         children: <Widget>[
      //           Text('Stack topStart'),
      //         ],
      //       ),
      //       Container(
      //         height: 300.0,
      //         color: Colors.grey[100],
      //         margin: EdgeInsets.all(10.0),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
