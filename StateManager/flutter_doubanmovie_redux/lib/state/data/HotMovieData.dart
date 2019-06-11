import 'dart:convert';

class HotMovieData {
  Rating rating;
  List<String> genres;
  String title;
  List<Cast> casts;
  int collectCount;
  List<Cast> directors;
  Avatars images;
  String id;

  HotMovieData();

  factory HotMovieData.fromJson(Map<String, dynamic> movieDataJson) {
    HotMovieData hotMovieData = HotMovieData();

    Rating rating = Rating(
        movieDataJson['rating']['max'],
        double.parse(movieDataJson['rating']['average'].toString()),
        movieDataJson['rating']['min']);
    hotMovieData.rating = rating;

    List<String> genres = new List();
    for (String genre in movieDataJson['genres']) {
      genres.add(genre);
    }
    hotMovieData.genres = genres;

    hotMovieData.title = movieDataJson['title'];

    List<Cast> casts = new List();
    for (dynamic castData in movieDataJson['casts']) {
      Avatars avatars;
      if (castData['avatars'] != null) {
        avatars = Avatars(castData['avatars']['small'],
            castData['avatars']['large'], castData['avatars']['medium']);
      } else {
        avatars = Avatars('', '', '');
      }
      Cast cast =
          new Cast(castData['alt'], avatars, castData['name'], castData['id']);
      casts.add(cast);
    }
    hotMovieData.casts = casts;

    hotMovieData.collectCount = movieDataJson['collect_count'];

    List<Cast> directors = new List();
    for (dynamic castData in movieDataJson['directors']) {
      Avatars avatars;
      if (castData['avatars'] != null) {
        avatars = Avatars(castData['avatars']['small'],
            castData['avatars']['large'], castData['avatars']['medium']);
      } else {
        avatars = Avatars('', '', '');
      }
      Cast cast =
          new Cast(castData['alt'], avatars, castData['name'], castData['id']);
      directors.add(cast);
    }
    hotMovieData.directors = directors;

    hotMovieData.images = Avatars(movieDataJson['images']['small'],
        movieDataJson['images']['large'], movieDataJson['images']['medium']);

    hotMovieData.id = movieDataJson['id'];
    return hotMovieData;
  }

  String getCasts() {
    String castsString = '';
    for (Cast cast in casts) {
      castsString += cast.name;
      castsString += '/';
    }

    return castsString.substring(0, castsString.length - 1);
  }

  String getDirectors() {
    String directorsString = '';
    for (Cast cast in directors) {
      directorsString += cast.name;
      directorsString += '/';
    }

    return directorsString.substring(0, directorsString.length - 1);
  }
}

class Rating {
  int max;
  double average;
  int min;

  Rating(this.max, this.average, this.min);
}

class Cast {
  String alt;
  Avatars avatars;
  String name;
  String id;

  Cast(this.alt, this.avatars, this.name, this.id);
}

class Avatars {
  String small;
  String large;
  String medium;

  Avatars(this.small, this.large, this.medium);
}
