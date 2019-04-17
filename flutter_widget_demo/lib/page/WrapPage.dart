import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/wrap/WrapWidget.dart';


class WrapPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Wrap'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WrapWidget()));
            },
          )
        ],
      ),
    );
  }
}
