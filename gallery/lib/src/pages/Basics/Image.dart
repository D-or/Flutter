import 'package:flutter/material.dart';

class H_Image extends StatelessWidget {
  H_Image({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        heightFactor: 3.2,
        child: Image.network(
          'https://flutter.io/assets/homepage/news-1-a2efa4e6a1633162e5e697a90922c2c9571d0d78d9eb18ddbec0919a8ada4f80.png',
        ),
      ),
    );
  }
}
