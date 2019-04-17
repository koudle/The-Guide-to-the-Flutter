import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/gesture/GestureDetectorWidget.dart';


class GestureDetectorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('手势识别Widget'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('GestureDetector'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GestureDetectorWidget()));
            },
          )
        ],
      ),
    );
  }
}
