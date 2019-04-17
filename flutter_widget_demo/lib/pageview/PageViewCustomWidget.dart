import 'package:flutter/material.dart';

void main() => runApp(PageViewCustomWidget());

class PageViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: Scaffold(
          appBar: AppBar(title: new Text('Flutter 可滚动Widget -- PageView')),
          body: PageView.custom(
            onPageChanged: (index) {
              print('current page $index ');
            },
            childrenDelegate: SliverChildListDelegate(<Widget>[
              ListTile(title: Text('Title0')),
              ListTile(title: Text('Title1')),
              ListTile(title: Text('Title2')),
              ListTile(title: Text('Title3')),
              ListTile(title: Text('Title4')),
            ]),
          )),
    );
  }
}
