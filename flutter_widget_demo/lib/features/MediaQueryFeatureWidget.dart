import 'package:flutter/material.dart';

void main() => runApp(MediaQueryFeatureWidget());

GlobalKey _globalKey = GlobalKey();

class MediaQueryFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter 功能类Widget -- MediaQuery")),
          body: BodyWidget()),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Hello Flutter",
          key: _globalKey,
        ),
        RaisedButton(
          child: Text('getSize'),
          onPressed: () {
            //获取屏幕的宽高
            print("Screen width:" +
                MediaQuery.of(context).size.width.toString() +
                " Screen height:" +
                MediaQuery.of(context).size.height.toString());
            //获取子Widget 的宽高
            print("Ttext width:" +
                _globalKey.currentContext.size.width.toString() +
                " Screen height:" +
                _globalKey.currentContext.size.height.toString());
          },
        )
      ],
    );
  }
}
