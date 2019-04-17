import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/snackbar/SnackBarBuilderWidget.dart';
import 'package:flutter_widget_demo/snackbar/SnackBarNoBuilerWidget.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('使用 Builer 显示 SnackBar'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SnackBarBuilderWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('不使用 Builer 显示 SnackBar'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SnackBarNoBuilerWidget()));
            },
          )
        ],
      ),
    );
  }
}

class SnackBarNoBuilderWidget {}
