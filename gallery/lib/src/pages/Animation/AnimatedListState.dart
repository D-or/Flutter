import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_AnimatedListState extends StatelessWidget {
  H_AnimatedListState({Key key}) : super(key: key);

  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  initState() {
    listKey.currentState.insertItem(123);
  }

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'AnimatedListState',
      // child: AnimatedList(
      //   key: listKey,
      // ),
    );
  }
}
