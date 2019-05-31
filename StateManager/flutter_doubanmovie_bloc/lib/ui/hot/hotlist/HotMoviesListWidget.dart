import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_doubanmovie/bloc/HotMoviesListBloc.dart';
import 'package:flutter_doubanmovie/ui/hot/hotlist/ui/item/HotMovieItemWidget.dart';

class HotMoviesListWidget extends StatefulWidget {

  HotMoviesListWidget() {
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

    return BlocBuilder(
      bloc: BlocProvider.of<HotMoviesListBloc>(context),
      builder: (context,HotMoviesListState moviesListState) {
        if (moviesListState == null || moviesListState.list == null || moviesListState.list.length == 0) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.separated(
              itemCount: moviesListState.list.length,
              itemBuilder: (context, index) {
                return HotMovieItemWidget(moviesListState.list[index]);
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
