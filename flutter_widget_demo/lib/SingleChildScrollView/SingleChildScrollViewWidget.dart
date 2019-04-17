import 'package:flutter/material.dart';

main() => runApp(new SingleChildScrollViewWidget());

class SingleChildScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(
                title: new Text('Flutter 可滚动Widget -- SingleChildScrollView')),
            body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[Text('Hello Flutter ' * 100)],
              ),
            )));
  }
}
