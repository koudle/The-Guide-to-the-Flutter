import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/stack/StackWidget.dart';


class StackPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠布局'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Wrap'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StackWidget()));
            },
          )
        ],
      ),
    );
  }
}
