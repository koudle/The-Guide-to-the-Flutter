import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/button/ButtonBarWidget.dart';
import 'package:flutter_widget_demo/button/CupertinoButtonWidget.dart';
import 'package:flutter_widget_demo/button/FlatButtonWidget.dart';
import 'package:flutter_widget_demo/button/FloatingActionButtonWidget.dart';
import 'package:flutter_widget_demo/button/IconButtonWidget.dart';
import 'package:flutter_widget_demo/button/MaterialButtonWidget.dart';
import 'package:flutter_widget_demo/button/OutlineButtonWidget.dart';
import 'package:flutter_widget_demo/button/RaisedButtonWidget.dart';

class ButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('MaterialButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MaterialButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('RaisedButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RaisedButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('FlatButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FlatButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('OutlineButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OutlineButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('IconButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IconButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('FloatingActionButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FloatingActionButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('CupertinoButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CupertinoButtonWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('ButtonBar'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ButtonBarWidget()));
            },
          ),
        ],
      ),
    );
  }
}
