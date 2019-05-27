import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(CounterWidget());

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterState();
  }
}

class CounterState extends State<CounterWidget> {
  int _count = 0;

  static final StreamController<int> _streamController =
      StreamController<int>();
  static final StreamSink<int> _sink = _streamController.sink;
  static final Stream<int> _stream = _streamController.stream;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter 响应式编程")),
        body: StreamBuilder(
          stream: _stream,
          initialData: 0,
          builder: (context, snapShot) {
            return Center(
              child: Text('${snapShot.data}'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _calculate();
          },
        ),
      ),
    );
  }

  void _calculate(){
    _sink.add(++_count);
  }
}
