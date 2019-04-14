import 'dart:convert';

class HotMovieData {
  String title;
  double rating;
  String directors;
  String casts;
  int watchedPeople;
  String images;

  HotMovieData(this.title, this.rating, this.directors, this.casts,
      this.watchedPeople, this.images);

  factory HotMovieData.fromJson(Map<String, dynamic> dataJson) {
    String title = dataJson['title'];
    double rating = double.parse(dataJson['rating']['average'].toString());

    String directores = '';
    for (dynamic director in dataJson['directors']) {
      if (directores.isNotEmpty) {
        directores += '/';
      }
      directores += director['name'];
    }

    String casts = '';
    for (dynamic cast in dataJson['casts']) {
      if (casts.isNotEmpty) {
        casts += '/';
      }
      casts += cast['name'];
    }

    int watchedPeople = dataJson['collect_count'];

    String images = dataJson['images']['small'];

    return HotMovieData(
        title, rating, directores, casts, watchedPeople, images);
  }
}
