import 'package:flutter/material.dart';

void main() => runApp(DefaultTextStyleWidget());

class DefaultTextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 文本")),
          body: DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              decoration: TextDecoration.lineThrough
            ),
            child: Column(
              children: <Widget>[
                Text("Hello Flutter"),
                Text("Hello World")
              ],
            ),
          )),
    );
  }
}