import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/page/BottomSheetPage.dart';
import 'package:flutter_widget_demo/page/ButtonPage.dart';
import 'package:flutter_widget_demo/page/DialogPage.dart';
import 'package:flutter_widget_demo/page/FlexPage.dart';
import 'package:flutter_widget_demo/page/GestureDetectorPage.dart';
import 'package:flutter_widget_demo/page/ImagePage.dart';
import 'package:flutter_widget_demo/page/LinearPage.dart';
import 'package:flutter_widget_demo/page/MenuPage.dart';
import 'package:flutter_widget_demo/page/SnackBarPage.dart';
import 'package:flutter_widget_demo/page/StackPage.dart';
import 'package:flutter_widget_demo/page/TextFieldPage.dart';
import 'package:flutter_widget_demo/page/TextPage.dart';
import 'package:flutter_widget_demo/page/WrapPage.dart';

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
        '/Page4': (context) => SnackBarPage(),
        '/Page5': (context) => DialogPage(),
        '/Page6': (context) => BottomSheetPage(),
        '/Page7': (context) => MenuPage(),
        '/Page8': (context) => GestureDetectorPage(),
        '/Page9': (context) => FlexPage(),
        '/Page10': (context) => LinearPage(),
        '/Page11': (context) => WrapPage(),
        '/Page12': (context) => StackPage(),
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
  List<String> widgets = [
    '第28节 -- 文本框',
    '第29节 -- 图片和Icon',
    '第30节 -- 输入框',
    '第31节 -- 按钮',
    '第32节 -- SnackBar',
    '第33节 -- 对话框',
    '第34节 -- BottomSheet',
    '第35节 -- 菜单栏',
    '第36节 -- 手势识别Widget',
    '第39节 -- 弹性布局',
    '第40节 -- 线性布局',
    '第41节 -- 流式布局',
    '第42节 -- 层叠布局',
  ];

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
                Navigator.pushNamed(context, '/Page' + index.toString());
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }
}
