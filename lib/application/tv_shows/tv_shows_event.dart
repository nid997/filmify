part of 'tv_shows_bloc.dart';

@freezed
class TvShowsEvent with _$TvShowsEvent {
  const factory TvShowsEvent.getTvShows() = GetTvShows;
  const factory TvShowsEvent.getPopularShows() = GetPopularShows;
}
