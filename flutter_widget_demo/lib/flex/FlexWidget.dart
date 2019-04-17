import 'package:flutter/material.dart';

main() => runApp(new FlexWidget());

class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter 布局Widget -- 弹性布局')),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30.0,
                  height: 30.0,
                ),
                Text('三个 Widget 的 flex：1:2:1'),
                Container(
                  color: Colors.purple,
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 60.0,
                          height: 30.0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                ),
                Text('三个 Widget 的 flex：1:1:1'),
                Container(
                  color: Colors.purple,
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 60.0,
                          height: 30.0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
