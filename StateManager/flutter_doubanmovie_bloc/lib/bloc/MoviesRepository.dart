import 'package:flutter_doubanmovie/bloc/HotMovieData.dart';
import 'package:flutter_doubanmovie/bloc/MoviesApiProvider.dart';

class MoviesRepository{
  final _movieApiProvider = MoviesApiProvider();

  Future<List<HotMovieData>> fetchMoviesList(String city) async {
    return _movieApiProvider.fetchMoviesList(city);
  }
}