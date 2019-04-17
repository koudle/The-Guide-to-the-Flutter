import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/pageview/PageViewBuilderWidget.dart';
import 'package:flutter_widget_demo/pageview/PageViewCustomWidget.dart';
import 'package:flutter_widget_demo/pageview/PageViewDefaultWidget.dart';

class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('PageView 默认使用方法'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageViewDefaultWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('PageView.builder'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageViewBuilderWidget(
                            items:
                                List<String>.generate(10000, (i) => "Item $i"),
                          )));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('PageView.custom'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageViewCustomWidget()));
            },
          )
        ],
      ),
    );
  }
}
