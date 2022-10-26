import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:movie_zone_app/domain/home/home_movies_service.dart';
import 'package:movie_zone_app/domain/search/search_service.dart';
import '../../domain/home/home_respo/home_respo.dart';
part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService _searchService;
  final HomeMovieService _homeMovieService;
  SearchBloc(this._homeMovieService, this._searchService)
      : super(SearchState.initial()) {
    on<Initialise>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }
      final _result = await _homeMovieService.getNowPlaying();

      final _state = _result.fold(
        (MainFailure failure) {
          return const SearchState(
            searchResult: [],
            idleList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HomeRespo respo) {
          return SearchState(
            searchResult: [],
            idleList: respo.results,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(_state);
    });

    on<SearchMovie>(
      (event, emit) async {
        emit(
          const SearchState(
            searchResult: [],
            idleList: [],
            isLoading: true,
            hasError: false,
          ),
        );

        final _result =
            await _searchService.searchMovies(movieQuery: event.movieQuery);

        final _state = _result.fold(
          (MainFailure failure) {
            return const SearchState(
              searchResult: [],
              idleList: [],
              isLoading: false,
              hasError: true,
            );
          },
          (HomeRespo respo) {
            return SearchState(
              searchResult: respo.results,
              idleList: [],
              isLoading: false,
              hasError: false,
            );
          },
        );
        emit(_state);
      },
    );
  }
}
