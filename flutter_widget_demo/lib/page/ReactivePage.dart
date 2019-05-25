import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/reactive/CounterWidget.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('响应式编程'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('StreamControl'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CounterWidget()));
            },
          ),
        ],
      ),
    );
  }
}
