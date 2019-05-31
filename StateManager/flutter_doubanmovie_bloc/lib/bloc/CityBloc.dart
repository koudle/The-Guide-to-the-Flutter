import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


class CityState{
  String _curCity;

  get curCity => _curCity;

  CityState(this._curCity);

}

class CityEvent {
  String _city;

  get city => _city;

  CityEvent(this._city);
}

class CityBloc extends Bloc<CityEvent, CityState> {

  CityBloc() {
    initData();
  }

  void initData() async {
    final prefs = await SharedPreferences.getInstance(); //获取 prefs

    String city = prefs.getString('curCity'); //获取 key 为 curCity 的值

    dispatch(CityEvent(city));
  }

  @override
  // TODO: implement initialState
  get initialState => CityState(null); //默认值为空

  @override
  Stream<CityState> mapEventToState(CityEvent event) async*{
    // TODO: implement mapEventToState
    yield new CityState(event.city);
  }
}