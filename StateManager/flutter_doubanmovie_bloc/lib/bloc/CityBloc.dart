import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CityEvent {
  String _city;

  get city => _city;

  CityEvent(this._city);
}

class CityBloc extends Bloc<CityEvent, String> {
  String _curCity;

  CityBloc() {
    initData();
  }

  void initData() async {
    final prefs = await SharedPreferences.getInstance(); //获取 prefs

    String city = prefs.getString('curCity'); //获取 key 为 curCity 的值

    dispatch(CityEvent(city));
  }

  get curCity => _curCity;

  @override
  // TODO: implement initialState
  get initialState => ''; //默认值为空

  @override
  Stream<String> mapEventToState(CityEvent event) async*{
    // TODO: implement mapEventToState
    _curCity = event.city;
    yield _curCity;
  }
}