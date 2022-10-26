// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/bloc/search_bloc.dart' as _i10;
import '../../../application/home_movies/home_movies_bloc.dart' as _i5;
import '../../../application/tv_shows/tv_shows_bloc.dart' as _i11;
import '../../../infrastructure/home_movies/home_movies_imple.dart' as _i4;
import '../../../infrastructure/search/search_implem.dart' as _i7;
import '../../../infrastructure/tv_shows/tv_shows_implementation.dart' as _i9;
import '../../home/home_movies_service.dart' as _i3;
import '../../search/search_service.dart' as _i6;
import '../../tv_shows_service.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HomeMovieService>(() => _i4.HomeMoviesImple());
  gh.factory<_i5.HomeMoviesBloc>(
      () => _i5.HomeMoviesBloc(get<_i3.HomeMovieService>()));
  gh.lazySingleton<_i6.SearchService>(() => _i7.SearchImple());
  gh.lazySingleton<_i8.TvShowsService>(() => _i9.TvShowsImplements());
  gh.factory<_i10.SearchBloc>(() =>
      _i10.SearchBloc(get<_i3.HomeMovieService>(), get<_i6.SearchService>()));
  gh.factory<_i11.TvShowsBloc>(
      () => _i11.TvShowsBloc(get<_i8.TvShowsService>()));
  return get;
}
