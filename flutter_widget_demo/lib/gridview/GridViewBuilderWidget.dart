import 'package:flutter/material.dart';

void main() => runApp(GridViewBuilderWidget(
      items: List<String>.generate(10000, (i) => "Item $i"),
    ));

class GridViewBuilderWidget extends StatelessWidget {
  final List<String> items;

  GridViewBuilderWidget({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: Scaffold(
        appBar: AppBar(title: new Text('Flutter 可滚动Widget -- GridView')),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
