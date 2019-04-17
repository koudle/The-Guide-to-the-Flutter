import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SnackBarBuilderWidget());

class SnackBarBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI Widget -- SnackBar 及 Builder")),
        body: Builder(
          builder: (context) => RaisedButton(
                child: Text('Show SnackBar'),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('SnackBar'),
                      duration: Duration(seconds: 5)));
                },
              ),
        ),
      ),
    );
  }
}
