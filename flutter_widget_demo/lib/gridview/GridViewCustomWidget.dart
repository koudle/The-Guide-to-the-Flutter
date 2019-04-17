import 'package:flutter/material.dart';

void main() => runApp(GridViewCustomWidget(
      items: List<String>.generate(10000, (i) => "Item $i"),
    ));

class GridViewCustomWidget extends StatelessWidget {
  final List<String> items;

  GridViewCustomWidget({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: Scaffold(
        appBar: AppBar(title: new Text('Flutter 可滚动Widget -- GridView')),
        body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildListDelegate(<Widget>[
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
          ]),
        ),
      ),
    );
  }
}
