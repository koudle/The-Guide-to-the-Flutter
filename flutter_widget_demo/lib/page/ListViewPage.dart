import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/listview/ListViewBuilderWidget.dart';
import 'package:flutter_widget_demo/listview/ListViewCustomWidget.dart';
import 'package:flutter_widget_demo/listview/ListViewDefaultWidget.dart';
import 'package:flutter_widget_demo/listview/ListViewSeparatedWidget.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('ListView 默认使用方法'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewDefaultWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('ListView.builder'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewBuilderWidget(
                            items:
                                List<String>.generate(10000, (i) => "Item $i"),
                          )));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('ListView.separated'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewSeparatedWidget(
                            items:
                                List<String>.generate(10000, (i) => "Item $i"),
                          )));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('ListView.custom'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewCustomWidget(
                            items:
                                List<String>.generate(10000, (i) => "Item $i"),
                          )));
            },
          )
        ],
      ),
    );
  }
}
