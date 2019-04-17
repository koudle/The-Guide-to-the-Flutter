import 'package:flutter/material.dart';

main() => runApp(new CenterWidget());

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter 容器Widget -- Center')),
            body: Center(
              child: Text(
                'Hello Flutter',
                style: TextStyle(color: Colors.red, fontSize: 50),
              ),
            )));
  }
}
