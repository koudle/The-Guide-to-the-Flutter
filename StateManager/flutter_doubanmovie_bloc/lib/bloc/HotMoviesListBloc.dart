import 'package:bloc/bloc.dart';
import 'package:flutter_doubanmovie/bloc/HotMovieData.dart';
import 'package:flutter_doubanmovie/bloc/MoviesRepository.dart';

class HotMoviesListState{
  List<HotMovieData> _list;

  get list => _list;

  HotMoviesListState(this._list);
}


class HotMoviesEvent{
  String _curCity;

  get curCity => _curCity;

  HotMoviesEvent(this._curCity);
}

class HotMoviesListBloc extends Bloc<HotMoviesEvent,HotMoviesListState>{

  final _movieRepository = MoviesRepository();

  @override
  // TODO: implement initialState
  HotMoviesListState get initialState => HotMoviesListState(null);

  @override
  Stream<HotMoviesListState> mapEventToState(HotMoviesEvent event) async *{
    // TODO: implement mapEventToState
    List<HotMovieData> movies = await _movieRepository.fetchMoviesList(event.curCity);
    yield HotMoviesListState(movies);
  }

}