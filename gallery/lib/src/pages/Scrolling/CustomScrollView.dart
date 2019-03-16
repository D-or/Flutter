import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_CustomScrollView extends StatelessWidget {
  H_CustomScrollView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: '',
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
