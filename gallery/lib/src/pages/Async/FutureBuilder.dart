import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_FutureBuilder extends StatelessWidget {
  H_FutureBuilder({Key key}) : super(key: key);

  Future<String> _calculation;

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'FutureBuilder',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
          child: FutureBuilder<String>(
            future: _calculation, // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Press button to start.');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Text('Awaiting result...');
                case ConnectionState.done:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  return Text('Result: ${snapshot.data}');
              }
              return null; // unreachable
            },
          ),
        ),
      ),
    );
  }
}
