import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/features/MediaQueryFeatureWidget.dart';
import 'package:flutter_widget_demo/features/ThemeFeatureWidget.dart';

class FeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('功能类Widget'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Theme'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThemeFeatureWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('MediaQuery'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MediaQueryFeatureWidget()));
            },
          )
        ],
      ),
    );
  }
}
