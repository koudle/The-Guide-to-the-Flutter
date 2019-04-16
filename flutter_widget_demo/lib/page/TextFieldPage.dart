import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/textfield/TextFieldWidget.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('输入框'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text('TextField'),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TextFieldWidget()));
            },
          )
        ],
      ),
    );
  }
}
