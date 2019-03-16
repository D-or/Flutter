import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_StreamBuilder extends StatelessWidget {
  H_StreamBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'StreamBuilder',
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
          child: StreamBuilder<int>(
            // stream: _lot?.bids, // a Stream<int> or null
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Select lot');
                case ConnectionState.waiting:
                  return Text('Awaiting bids...');
                case ConnectionState.active:
                  return Text('\$${snapshot.data}');
                case ConnectionState.done:
                  return Text('\$${snapshot.data} (closed)');
              }
              return null; // unreachable
            },
          ),
        ),
      ),
    );
  }
}
