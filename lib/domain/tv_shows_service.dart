import 'package:dartz/dartz.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:movie_zone_app/domain/tv_shows/models/tv_shows.dart';

abstract class TvShowsService {
  Future<Either<MainFailure, TvShows>> getTvShows();
  Future<Either<MainFailure, TvShows>> getPopularShows();
}
