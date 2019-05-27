import 'package:bloc/bloc.dart';
import 'package:flutter_doubanmovie/bloc/CityBloc.dart';
import 'package:flutter_doubanmovie/bloc/HotMovieData.dart';
import 'package:flutter_doubanmovie/bloc/MoviesRepository.dart';

class HotMoviesListBloc extends Bloc<CityEvent,List<HotMovieData>>{

  final _movieRepository = MoviesRepository();

  @override
  // TODO: implement initialState
  List<HotMovieData> get initialState => new List();

  @override
  Stream<List<HotMovieData>> mapEventToState(CityEvent event) async *{
    // TODO: implement mapEventToState
    List<HotMovieData> movies = await _movieRepository.fetchMoviesList(event.city);
    yield movies;
  }

}