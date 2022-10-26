part of 'home_movies_bloc.dart';

@freezed
class HomeMovieEvent with _$HomeMovieEvent{
  const factory HomeMovieEvent.getUpComing() = GetUpComing;
  const factory HomeMovieEvent.getPopular() = GetPopular;
  const factory HomeMovieEvent.getTopRated() = GetTopRated;
  const factory HomeMovieEvent.getNowPlaying() = GetNowPlaying;
}
