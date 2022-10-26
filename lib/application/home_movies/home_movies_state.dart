part of 'home_movies_bloc.dart';

@freezed
class HomeMovieState with _$HomeMovieState {
  const factory HomeMovieState({
    required String stateId,
    required List<HomeRespoData> upComingMovies,
    required List<HomeRespoData> nowPlayingMovies,
    required List<HomeRespoData> topRatedMovies,
    required List<HomeRespoData> popularMovies,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeMovieState.initial() => const HomeMovieState(
    stateId:"0",
        upComingMovies: [],
        nowPlayingMovies: [],
        topRatedMovies: [],
        popularMovies: [],
        hasError: false,
        isLoading: false
      );
}
