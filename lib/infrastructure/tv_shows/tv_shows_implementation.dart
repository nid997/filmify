

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_zone_app/domain/core/api_end_points.dart';
import 'package:movie_zone_app/domain/tv_shows/models/tv_shows.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_zone_app/domain/tv_shows_service.dart';

@LazySingleton(as: TvShowsService)
class TvShowsImplements extends TvShowsService {
  @override
  Future<Either<MainFailure, TvShows>> getTvShows() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.tvShows);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = TvShows.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, TvShows>> getPopularShows() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.popularShows);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = TvShows.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
