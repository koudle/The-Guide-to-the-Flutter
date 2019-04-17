import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/dialog/ShowAboutDialogWidget.dart';
import 'package:flutter_widget_demo/dialog/ShowAlertDialogWidget.dart';
import 'package:flutter_widget_demo/dialog/ShowCupertinoAlertDialogWidget.dart';
import 'package:flutter_widget_demo/dialog/ShowSimpleDialogWidget.dart';

class DialogPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('对话框'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('showAboutDialog'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShowAboutDialogWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('showDialog: SimpleDialog'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShowSimpleDialogWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('showDialog: AlertDialog'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShowAlertDialogWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('showDialog: CupertinoAlertDialog'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShowCupertinoAlertDialogWidget()));
            },
          )
        ],
      ),
    );
  }
}
