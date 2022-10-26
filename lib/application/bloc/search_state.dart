part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<HomeRespoData> searchResult,
    required List<HomeRespoData> idleList,
    required bool isLoading,
    required bool hasError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchResult: [],
        idleList: [],
        isLoading: false,
        hasError: false
      );
}
