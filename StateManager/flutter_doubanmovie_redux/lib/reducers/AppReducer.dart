import 'package:flutter_doubanmovie/actions/AppActions.dart';
import 'package:flutter_doubanmovie/state/AppState.dart';

AppState appReducer(AppState state,Object action) => AppState(
  cityReducer(state, action),
  hotMovieReducer(state, action)
);

CityState cityReducer(AppState state,Object action){
  if(action is ChangeCityAction){
    return CityState(action.city);
  }

  return state.cityState;
}


HotMovieState hotMovieReducer(AppState state,Object action){
  if(action is FetchHotMovieListSuccessAction){
    return HotMovieState(action.code,action.hotMovieList);
  }else if(action is FetchHotMovieListErrorAction){
    return HotMovieState(action.code,null);
  }

  return state.hotMovieState;
}