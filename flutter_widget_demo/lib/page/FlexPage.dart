import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/flex/FlexWidget.dart';


class FlexPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('弹性布局'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('Flex'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FlexWidget()));
            },
          )
        ],
      ),
    );
  }
}
