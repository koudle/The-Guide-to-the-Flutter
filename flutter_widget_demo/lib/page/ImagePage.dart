import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/image/IconWidget.dart';
import 'package:flutter_widget_demo/image/ImageWidget.dart';

class ImagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('图片和Icon'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Image'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImageWidget()));
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Text('Icon'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IconWidget()));
            },
          )
        ],
      ),
    );
  }
}
