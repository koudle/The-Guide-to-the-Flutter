import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget());

class TextFieldWidget extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 输入框")),
          body: Column(
            children: <Widget>[
              TextField(
                controller: _controller,
              ),
              RaisedButton(
                child: Text('获取输入框的内容'),
                onPressed: () {
                  print(_controller.text);
                },
              )
            ],
          )),
    );
  }
}
