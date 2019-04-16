import 'package:flutter/material.dart';

void main() => runApp(RichTextWidget());

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 文本")),
          body: RichText(
            text: TextSpan(children: [
              TextSpan(text: "Hello", style: TextStyle(color: Colors.blue)),
              TextSpan(text: "Flutter", style: TextStyle(color: Colors.red))
            ]),
          )),
    );
  }
}
