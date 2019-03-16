import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Table extends StatelessWidget {
  H_Table({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Table',
      child: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(10.0),
        child: Table(
          border: TableBorder.all(
            color: Colors.grey[300],
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          textDirection: TextDirection.rtl,
          defaultColumnWidth: FlexColumnWidth(2.0),
          children: [1, 2, 3, 4, 5, 6, 7]
              .map(
                (int item) => TableRow(
                      children: [item, item, item, item]
                          .map((int item) => TableCell(
                                child: Text(item.toString()),
                              ))
                          .toList(),
                    ),
              )
              .toList(),
        ),
      ),
    );
  }
}
