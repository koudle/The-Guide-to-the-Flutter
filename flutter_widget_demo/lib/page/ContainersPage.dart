import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/containers/AlignWidget.dart';
import 'package:flutter_widget_demo/containers/CenterWidget.dart';
import 'package:flutter_widget_demo/containers/ContainerWidget.dart';
import 'package:flutter_widget_demo/containers/PaddingWidget.dart';

class ContainersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('容器类Widget'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Padding'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaddingWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('Container'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContainerWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('Align'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlignWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('Center'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CenterWidget()));
            },
          )
        ],
      ),
    );
  }
}
