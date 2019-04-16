import 'package:flutter/material.dart';

void main() => runApp(IconButtonWidget());

class IconButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI 基础 Widget -- 按钮")),
        body: IconButton(
          onPressed: () {
            print('onPressed');
          },
          icon: Icon(Icons.headset, color: Colors.red),
        ),
      ),
    );
  }
}
