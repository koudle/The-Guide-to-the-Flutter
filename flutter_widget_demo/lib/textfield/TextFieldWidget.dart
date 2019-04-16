import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget());

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 文本")),
          body: TextField()),
    );
  }
}