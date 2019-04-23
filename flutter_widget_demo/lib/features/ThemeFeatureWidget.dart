import 'package:flutter/material.dart';

void main() => runApp(ThemeFeatureWidget());

class ThemeFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter 功能类Widget -- Theme")),
          body: ChildText()),
    );
  }
}

class ChildText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("Hello Flutter",
        style: TextStyle(color: Theme.of(context).primaryColor));
  }
}
