import 'package:flutter/material.dart';

main() => runApp(new PaddingWidget());

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter 容器Widget -- Padding')),
            body: Padding(
              padding: EdgeInsets.all(100),
              child: Text('Hello Flutter'),
            )));
  }
}
