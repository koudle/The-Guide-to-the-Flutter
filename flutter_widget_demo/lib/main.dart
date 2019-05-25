import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/SingleChildScrollView/SingleChildScrollViewWidget.dart';
import 'package:flutter_widget_demo/customscrollview/CustonScrollViewWidget.dart';
import 'package:flutter_widget_demo/page/BottomSheetPage.dart';
import 'package:flutter_widget_demo/page/ButtonPage.dart';
import 'package:flutter_widget_demo/page/ContainersPage.dart';
import 'package:flutter_widget_demo/page/DialogPage.dart';
import 'package:flutter_widget_demo/page/FeaturesPage.dart';
import 'package:flutter_widget_demo/page/FlexPage.dart';
import 'package:flutter_widget_demo/page/GestureDetectorPage.dart';
import 'package:flutter_widget_demo/page/GridViewPage.dart';
import 'package:flutter_widget_demo/page/ImagePage.dart';
import 'package:flutter_widget_demo/page/LinearPage.dart';
import 'package:flutter_widget_demo/page/ListViewPage.dart';
import 'package:flutter_widget_demo/page/MenuPage.dart';
import 'package:flutter_widget_demo/page/PageViewPage.dart';
import 'package:flutter_widget_demo/page/ReactivePage.dart';
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
        // '/Page3': (context) => ButtonPage(),
        '/Page3': (context) => SnackBarPage(),
        '/Page4': (context) => DialogPage(),
        '/Page5': (context) => BottomSheetPage(),
        '/Page6': (context) => MenuPage(),
        '/Page7': (context) => GestureDetectorPage(),
        '/Page8': (context) => FlexPage(),
        '/Page9': (context) => LinearPage(),
        '/Page10': (context) => WrapPage(),
        '/Page11': (context) => StackPage(),
        '/Page12': (context) => ContainersPage(),
        '/Page13': (context) => FeaturesPage(),
        '/Page14': (context) => SingleChildScrollViewWidget(),
        '/Page15': (context) => ListViewPage(),
        '/Page16': (context) => CustomScrollViewWidget(),
        '/Page17': (context) => GridViewPage(),
        '/Page18': (context) => PageViewPage(),
        '/Page19': (context) => ReactivePage(),
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
    '第14节 -- 文本框',
    '第15节 -- 图片和Icon',
    '第16节 -- 输入框',
    '第17节 -- SnackBar',
    '第18节 -- 对话框',
    '第19节 -- BottomSheet',
    '第20节 -- 菜单栏',
    '第21节 -- 手势识别Widget',
    '第24节 -- 弹性布局',
    '第25节 -- 线性布局',
    '第26节 -- 流式布局',
    '第27节 -- 层叠布局',
    '第28节 -- 容器类Widget',
    '第29节 -- 功能类Widget',
    '第30节 -- SingleChildScrollView',
    '第31节 -- ListView',
    '第32节 -- CustomScrollView',
    '第33节 -- GridView',
    '第34节 -- PageView',
    '第52节 -- 响应式编程',
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
