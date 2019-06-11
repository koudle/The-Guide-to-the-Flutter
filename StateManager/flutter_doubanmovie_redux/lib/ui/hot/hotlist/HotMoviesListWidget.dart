import 'package:flutter/material.dart';
import 'package:flutter_doubanmovie/state/AppState.dart';
import 'package:flutter_doubanmovie/state/data/HotMovieData.dart';
import 'package:flutter_doubanmovie/ui/hot/hotlist/item/HotMovieItemWidget.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HotMoviesListWidget extends StatefulWidget {
  String curCity;

  HotMoviesListWidget(String city) {
    curCity = city;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HotMoviesListWidgetState();
  }
}

class HotMoviesListWidgetState extends State<HotMoviesListWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<AppState,List<HotMovieData>>(
      converter: (store) {
        return store.state.hotMovieState.hotMovieList;
      },
      builder: (context, hotMovies) {
        if (hotMovies == null || hotMovies.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.separated(
              itemCount: hotMovies.length,
              itemBuilder: (context, index) {
                return HotMovieItemWidget(hotMovies[index]);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 1,
                  color: Colors.black26,
                );
              },
            ),
          );
        }
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //返回 true，表示不会被回收
}
