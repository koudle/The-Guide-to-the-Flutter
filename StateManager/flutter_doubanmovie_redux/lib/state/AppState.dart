import 'data/HotMovieData.dart';

class AppState{
  CityState _cityState;
  HotMovieState _hotMovieState;

  get cityState => _cityState;
  get hotMovieState => _hotMovieState;


  AppState(this._cityState,this._hotMovieState);
}

class CityState{
  String _curCity;

  get curCity => _curCity;

  CityState(this._curCity);
}

class HotMovieState{
  int _code;
  List<HotMovieData> _hotMovieList;

  get code => _code;
  get hotMovieList => _hotMovieList;

  HotMovieState(this._code,this._hotMovieList);
}