import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_DataTable extends StatelessWidget {
  H_DataTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'DataTable',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: DataTable(
            sortAscending: true,
            sortColumnIndex: 2,
            rows: [1, 2, 3, 4]
                .map((int item) => DataRow(
                      selected: true,
                      cells: [item, item, item, item]
                          .map((int item) => DataCell(
                                Text(
                                  item.toString(),
                                ),
                                showEditIcon: true,
                                placeholder: true,
                                onTap: () {
                                  print(item);
                                },
                              ))
                          .toList(),
                    ))
                .toList(),
            columns: ['a', 'b', 'c', 'd']
                .map((String item) => DataColumn(
                      label: Text(item),
                      tooltip: item,
                      numeric: true,
                      onSort: (int i, bool b) {
                        print('$i, $b');
                      },
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
