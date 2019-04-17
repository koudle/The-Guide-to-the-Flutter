import 'package:flutter/material.dart';

main() => runApp(new ListViewDefaultWidget());

class ListViewDefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar:
                new AppBar(title: new Text('Flutter 可滚动Widget -- ListView')),
            body: ListView(
              children: <Widget>[
                ListTile(title: Text('Title1')),
                ListTile(title: Text('Title2')),
                ListTile(title: Text('Title3')),
                ListTile(title: Text('Title4')),
                ListTile(title: Text('Title5')),
                ListTile(title: Text('Title6')),
                ListTile(title: Text('Title7')),
                ListTile(title: Text('Title8')),
                ListTile(title: Text('Title9')),
                ListTile(title: Text('Title10')),
                ListTile(title: Text('Title11')),
                ListTile(title: Text('Title12')),
                ListTile(title: Text('Title13')),
                ListTile(title: Text('Title14')),
                ListTile(title: Text('Title15')),
                ListTile(title: Text('Title16')),
                ListTile(title: Text('Title17')),
                ListTile(title: Text('Title18')),
                ListTile(title: Text('Title19')),
              ],
            )));
  }
}
