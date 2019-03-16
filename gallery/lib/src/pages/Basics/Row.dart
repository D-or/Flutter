import 'package:flutter/material.dart';

class H_Row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          // children: [
          //   [
          //     [1, 2, 3],
          //     100.0
          //   ],
          //   [
          //     [1, 2, 3, 4],
          //     75.0
          //   ],
          //   [
          //     [1, 2, 3, 4, 5],
          //     60.0
          //   ],
          //   [
          //     [1, 2, 3, 4, 5, 6],
          //     50.0
          //   ]
          // ]
          //     .map((item) => Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: List<int>(item[0])
          //               .map((i) => Container(
          //                     height: item[1],
          //                     width: item[1],
          //                     margin: EdgeInsets.all(5.0),
          //                     decoration: BoxDecoration(
          //                       borderRadius:
          //                           BorderRadius.all(Radius.circular(6.0)),
          //                       color: Colors.blue,
          //                     ),
          //                     child: Center(
          //                       child: Text(
          //                         'Row $i',
          //                         style: TextStyle(
          //                           color: Colors.white,
          //                           fontSize: 12.0,
          //                         ),
          //                       ),
          //                     ),
          //                   ))
          //               .toList(),
          //         ))
          //     .toList(),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [1, 2, 3]
                  .map((int i) => Container(
                        height: 100.0,
                        width: 100.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'Row $i',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [1, 2, 3, 4]
                  .map((int i) => Container(
                        height: 75.0,
                        width: 75.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'Row $i',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [1, 2, 3, 4, 5]
                  .map((int i) => Container(
                        height: 50.0,
                        width: 50.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'Row $i',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [1, 2, 3, 4, 5, 6]
                  .map((int i) => Container(
                        height: 40.0,
                        width: 40.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'Row $i',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
