import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_GridView extends StatelessWidget {
  H_GridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'GridView',
      child: GridView.count(
          physics: new NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
              .map(
                (int item) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.black12),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(4.0)),
                      ),
                      child: Center(
                        child: Text(item.toString()),
                      ),
                    ),
              )
              .toList()),
    );
  }
}
