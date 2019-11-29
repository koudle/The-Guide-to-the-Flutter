import 'dart:convert';

import 'package:flutter_doubanmovie/actions/AppActions.dart';
import 'package:flutter_doubanmovie/state/AppState.dart';
import 'package:flutter_doubanmovie/state/data/HotMovieData.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

void appMiddlewares(
    Store<AppState> store, Object action, NextDispatcher next) async {
  if (action is InitAction) {
    await initCity(store);
  } else if (action is ChangeCityAction) {
    await _getData(store, action);
  }

  next(action);
}

void initCity(Store<AppState> store) async {
  final prefs = await SharedPreferences.getInstance(); //获取 prefs

  String city = prefs.getString('curCity'); //获取 key 为 curCity 的值

  if (city == null || city.isEmpty) {
    //如果 city 为空，则使用默认值
    city = '深圳';
  }

  store.dispatch(ChangeCityAction(city));
}

void _getData(Store<AppState> store, ChangeCityAction action) async {
  List<HotMovieData> serverDataList = new List();
  var response = await http.get(
      'https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=' +
          action.city +
          '&start=0&count=10');

  if (response.statusCode == 200) {
    //成功获取数据
    var responseJson = json.decode(response.body);
    for (dynamic data in responseJson['subjects']) {
      HotMovieData hotMovieData = HotMovieData.fromJson(data);
      serverDataList.add(hotMovieData);
    }

    store.dispatch(FetchHotMovieListSuccessAction(200, serverDataList));
  } else {
    //获取数据失败
    store.dispatch(FetchHotMovieListErrorAction(response.statusCode));
  }
}
