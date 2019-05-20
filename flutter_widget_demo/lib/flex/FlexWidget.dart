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
                Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          color: Colors.yellow,
                          child: Text('使用 Flexible 来包裹 子Widget'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                ),
                Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          child: Text('使用 Expanded 来包裹 子Widget'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                ),
                Text('三个 Flexible 的 flex：1:2:1'),
                Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.green,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
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
                Text('三个 Expanded 的 flex：1:2:1'),
                Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
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
                Text('三个 Expanded 的 flex：1:1:1'),
                Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
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
