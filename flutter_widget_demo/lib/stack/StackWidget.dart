import 'package:flutter/material.dart';

void main() => runApp(StackWidget());

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter布局Widget -- 层叠布局")),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 50,
              top: 100,
              child: Image.asset(
                "images/flutter.png",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text('Hello Flutter'),
          ],
        ),
      ),
    );
  }
}