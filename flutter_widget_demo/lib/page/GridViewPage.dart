import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/gridview/GridViewBuilderWidget.dart';
import 'package:flutter_widget_demo/gridview/GridViewCountWidget.dart';
import 'package:flutter_widget_demo/gridview/GridViewCustomWidget.dart';
import 'package:flutter_widget_demo/gridview/GridViewDefaultWidget.dart';
import 'package:flutter_widget_demo/gridview/GridViewExtentWidget.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('GridView 默认使用方法'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewDefaultWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('GridView.count'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewCountWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('GridView.extent'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewExtentWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('GridView.builder'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewBuilderWidget(
                            items:
                                List<String>.generate(10000, (i) => "Item $i"),
                          )));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('GridView.custom'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewCustomWidget(
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
