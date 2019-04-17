import 'package:flutter/material.dart';

main() => runApp(new WrapWidget());

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter 布局Widget -- 流式布局')),
            body: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0, // 主轴 方向间距
              runSpacing: 12.0, // 交叉轴 方向间距
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.start,
              children: <Widget>[
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('AAAAAAAA'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('M')),
                  label: new Text('BBBBBB'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('H')),
                  label: new Text('CCCCCCCCC'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: new Text('DDDDDDDD'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: new Text('EEEEEEEE'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: new Text('FFFFFFFFFFFFFFFF'),
                ),
              ],
            )));
  }
}
