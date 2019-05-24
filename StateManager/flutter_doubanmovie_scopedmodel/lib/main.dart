import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_doubanmovie/citys/CitysWidget.dart';
import 'package:flutter_doubanmovie/hot/HotWidget.dart';
import 'package:flutter_doubanmovie/mine/MineWidget.dart';
import 'package:flutter_doubanmovie/movies/MoviesWidget.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

CityModel cityModel = CityModel();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '豆瓣电影'),
      routes: {
        '/Citys': (context) => ScopedModel<CityModel>(
              model: cityModel,
              child: ScopedModelDescendant<CityModel>(
                builder: (context, child, model) {
                  return CitysWidget();
                },
              ),
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _widgetItems = [HotWidget(), MoviesWidget(), MineWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModel<CityModel>(
        model: cityModel,
        child: _widgetItems[_selectedIndex],
      ), //选中不同的选项显示不同的界面,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('热映')),
          BottomNavigationBarItem(
              icon: Icon(Icons.panorama_fish_eye), title: Text('找片')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('我的'))
        ], //BottomNavigationBarItem 的 icon 用的是 Icon Widget实现的，这里是随便找的图标，先实现功能，后续在改成和 豆瓣电影 的一样
        currentIndex: _selectedIndex, //默认选中的 index
        fixedColor: Colors.black, //选中时颜色变为黑色
        type: BottomNavigationBarType.fixed, //类型为 fixed
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; //刷新界面
    });
  }
}

class CityModel extends Model {
  String curCity;

  CityModel() {
    initData();
  }

  void initData() async {
    final prefs = await SharedPreferences.getInstance(); //获取 prefs

    String city = prefs.getString('curCity'); //获取 key 为 curCity 的值

    if (city != null && city.isNotEmpty) {
      //如果有值
      setCurCity(city);
    } else {
      //如果没有值，则使用默认值
      setCurCity('深圳');
    }
  }

  void setCurCity(String city) {
    if (curCity != city) {
      curCity = city;

      //通知状态发生变化
      notifyListeners();
    }
  }

  static CityModel of(BuildContext context) =>
      ScopedModel.of<CityModel>(context);
}
