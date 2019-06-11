import 'package:flutter_doubanmovie/state/data/HotMovieData.dart';

class InitAction {

  InitAction();
}

class ChangeCityAction {
  String _city;

  get city => _city;

  ChangeCityAction(this._city);
}

class FetchHotMoviesAction {
  String _city;

  get city => _city;

  FetchHotMoviesAction(this._city);
}

class FetchHotMovieListSuccessAction {
  int _code;
  List<HotMovieData> _hotMovieList;

  get code => _code;
  get hotMovieList => _hotMovieList;

  FetchHotMovieListSuccessAction(this._code,this._hotMovieList);
}

class FetchHotMovieListErrorAction {
  int _code;

  get code => _code;

  FetchHotMovieListErrorAction(this._code);
}