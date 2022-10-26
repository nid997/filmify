part of 'tv_shows_bloc.dart';

@freezed
class TvShowState with _$TvShowState {
  const factory TvShowState({
    required List<TvShowData> latestList,
    required bool isLoading,
    required bool hasError,
    required List<TvShowData> popularShows,
  }) = _Initial;

  factory TvShowState.intial() => const TvShowState(
      latestList: [], isLoading: false, hasError: false, popularShows: []);
}
