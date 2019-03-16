import 'package:flutter/material.dart';

const letters = 'abcdefghijklmnopqrstuvwxyz';
const words = 'This is a sentence.';

class H_Text extends StatelessWidget {
  H_Text({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(6.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: FontWeight.values
                      .map(
                        (value) => Text(
                              letters,
                              style: TextStyle(
                                fontWeight: value,
                                fontSize: 20.0,
                              ),
                            ),
                      )
                      .toList(),
                ),
              ),
              Text(
                words,
                style: TextStyle(
                  letterSpacing: 5.0,
                  fontSize: 20.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  words,
                  style: TextStyle(
                    wordSpacing: 10.0,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Text(
                words,
                style: TextStyle(
                  fontSize: 20.0,
                  shadows: [
                    Shadow(
                      color: Colors.black38,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  words,
                  style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 20.0,
                  ),
                ),
              ),
              Text(
                words,
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
