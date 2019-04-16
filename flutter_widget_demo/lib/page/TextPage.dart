import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/text/DefaultTextStyleWidget.dart';
import 'package:flutter_widget_demo/text/RichTextWidget.dart';
import 'package:flutter_widget_demo/text/TextWidget.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('文本框'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Text'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TextWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('RichText'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RichTextWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('DefaultTextStyle'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DefaultTextStyleWidget()));
            },
          ),
        ],
      ),
    );
  }
}
