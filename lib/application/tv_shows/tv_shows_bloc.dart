import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:movie_zone_app/domain/tv_shows_service.dart';
import '../../domain/tv_shows/models/tv_shows.dart';
part 'tv_shows_event.dart';
part 'tv_shows_state.dart';
part 'tv_shows_bloc.freezed.dart';

@injectable
class TvShowsBloc extends Bloc<TvShowsEvent, TvShowState> {
  final TvShowsService _tvShowsService;
  TvShowsBloc(this._tvShowsService) : super(TvShowState.intial()) {
    //get tvshows data

    on<GetTvShows>(
      (event, emit) async {
//send loading to ui

        emit(
          const TvShowState(
              latestList: [],
              isLoading: true,
              hasError: false,
              popularShows: []),
        );

        //get data from remote
        final result = await _tvShowsService.getTvShows();
        final newState = result.fold(
          (MainFailure failure) {
            return const TvShowState(
                latestList: [],
                isLoading: false,
                hasError: true,
                popularShows: []);
          },
          (TvShows resp) {
            return TvShowState(
              latestList: resp.results,
              isLoading: false,
              hasError: false,
              popularShows: state.popularShows,
            );
          },
        );
        emit(newState);
      },
    );

    on<GetPopularShows>(
      (event, emit) async {
//send loading to ui

        emit(
          const TvShowState(
              latestList: [],
              isLoading: true,
              hasError: false,
              popularShows: []),
        );

        //get data from remote
        final result = await _tvShowsService.getPopularShows();
        final newState = result.fold(
          (MainFailure failure) {
            return const TvShowState(
                latestList: [],
                isLoading: false,
                hasError: true,
                popularShows: []);
          },
          (TvShows resp) {
            return TvShowState(
                latestList: state.latestList,
                isLoading: false,
                hasError: false,
                popularShows: resp.results);
          },
        );
        emit(newState);
      },
    );
  }
}
