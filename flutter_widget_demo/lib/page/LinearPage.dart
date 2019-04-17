import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/linear/ColumnWidget.dart';
import 'package:flutter_widget_demo/linear/RowWidget.dart';

class LinearPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('线性布局'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Row'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RowWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('Column'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColumnWidget()));
            },
          )
        ],
      ),
    );
  }
}
