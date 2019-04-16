import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/page/ButtonPage.dart';
import 'package:flutter_widget_demo/page/ImagePage.dart';
import 'package:flutter_widget_demo/page/TextFieldPage.dart';
import 'package:flutter_widget_demo/page/TextPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Widget Demo'),
      routes: {
        '/Page0': (context) => TextPage(),
        '/Page1': (context) => ImagePage(),
        '/Page2': (context) => TextFieldPage(),
        '/Page3': (context) => ButtonPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> widgets = ['第28节 -- 文本框', '第29节 -- 图片和Icon','第30节 -- 输入框','第31节 -- 按钮'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ListTile(title: Text(widgets[index])),
              onTap: () {
                Navigator.pushNamed(context, '/Page'+index.toString());
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }
}
