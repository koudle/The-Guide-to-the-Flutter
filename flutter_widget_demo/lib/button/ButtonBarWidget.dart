import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ButtonBarWidget());

class ButtonBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI 基础 Widget -- 按钮")),
        body: ButtonBar(
          alignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text('Button A'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Button B'),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.headset,
                color: Colors.green,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
