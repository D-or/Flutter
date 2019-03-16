import 'package:flutter/material.dart';

import '../../main.dart';

import './Content.dart';
import './SubTitle.dart';
import './ListItem.dart';

class Lister extends StatelessWidget {
  Lister({Key key, this.title, this.children})
      : super(key: ObjectKey(children));

  final List<Map<String, dynamic>> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Builder(
          builder: (ctx) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: children.map((Map<String, dynamic> child) {
                  final item = Child.map(child);

                  return item.desc != ''
                      ? ListItem(
                          title: item.title,
                          desc: item.desc,
                          page: item.page,
                        )
                      : SubTitle(
                          title: item.title,
                        );
                }).toList());
          },
        ),
      ),
    );
  }
}
