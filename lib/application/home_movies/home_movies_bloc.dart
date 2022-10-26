import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:movie_zone_app/domain/home/home_movies_service.dart';

import '../../domain/home/home_respo/home_respo.dart';
part 'home_movies_event.dart';
part 'home_movies_state.dart';

part 'home_movies_bloc.freezed.dart';

@injectable
class HomeMoviesBloc extends Bloc<HomeMovieEvent, HomeMovieState> {
  final HomeMovieService _homeMovieService;

  HomeMoviesBloc(this._homeMovieService) : super(HomeMovieState.initial()) {
    on<GetUpComing>(
      (event, emit) async {
        //loading to ui
        emit(
           HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              upComingMovies: [],
              nowPlayingMovies: [],
              topRatedMovies: [],
              popularMovies: [],
              isLoading: true,
              hasError: false),
        );

        //get data

        final result = await _homeMovieService.getComingSoon();
        final result1 = result.fold(
          (MainFailure failure) {
            return  HomeMovieState(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
              upComingMovies: [],
              nowPlayingMovies: [],
              topRatedMovies: [],
              popularMovies: [],
              isLoading: false,
              hasError: true,
            );
          },
          (HomeRespo respo) {
            return HomeMovieState(
              stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                upComingMovies: respo.results,
                nowPlayingMovies: state.nowPlayingMovies,
                topRatedMovies: state.topRatedMovies,
                popularMovies: state.popularMovies,
                isLoading: false,
                hasError: false);
          },
        );
        emit(result1);
      },
    );

    on<GetPopular>((event, emit) async {
//loading to ui

      emit(
         HomeMovieState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: [],
            nowPlayingMovies: [],
            topRatedMovies: [],
            popularMovies: [],
            isLoading: true,
            hasError: false),
      );

      final result = await _homeMovieService.getPopular();
      final result2 = result.fold(
        (MainFailure failure) {
          return  HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: [],
            nowPlayingMovies: [],
            topRatedMovies: [],
            popularMovies: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HomeRespo respo) {
          return HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: state.upComingMovies,
            nowPlayingMovies: state.nowPlayingMovies,
            topRatedMovies: state.topRatedMovies,
            popularMovies: respo.results,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(result2);
    });

    on<GetTopRated>((event, emit) async {
      emit(
         HomeMovieState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: [],
            nowPlayingMovies: [],
            topRatedMovies: [],
            popularMovies: [],
            isLoading: true,
            hasError: false),
      );

      final result = await _homeMovieService.getTopRated();
      final result3 = result.fold(
        (MainFailure failure) {
          return  HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: [],
            nowPlayingMovies: [],
            topRatedMovies: [],
            popularMovies: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HomeRespo respo) {
          return HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: state.upComingMovies,
            nowPlayingMovies: state.nowPlayingMovies,
            topRatedMovies: respo.results,
            popularMovies: state.popularMovies,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(result3);
    });

    on<GetNowPlaying>((event, emit) async {
      emit(
         HomeMovieState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: [],
            nowPlayingMovies: [],
            topRatedMovies: [],
            popularMovies: [],
            isLoading: true,
            hasError: false),
      );

      final result = await _homeMovieService.getNowPlaying();
      final result4 = result.fold(
        (MainFailure failure) {
          return  HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: [],
            nowPlayingMovies: [],
            topRatedMovies: [],
            popularMovies: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HomeRespo respo) {
          return HomeMovieState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            upComingMovies: state.upComingMovies,
            nowPlayingMovies: respo.results,
            topRatedMovies: state.topRatedMovies,
            popularMovies: state.popularMovies,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(result4);
    });
  }
}
