import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/menu/PopupMenuButtonWidget.dart';


class MenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('菜单栏'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('PopupMenuButton'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PopupMenuButtonWidget()));
            },
          )
        ],
      ),
    );
  }
}
