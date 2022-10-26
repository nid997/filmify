

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_zone_app/domain/home/home_movies_service.dart';
import 'package:movie_zone_app/domain/home/home_respo/home_respo.dart';
import '../../domain/core/api_end_points.dart';

@LazySingleton(as: HomeMovieService)
class HomeMoviesImple extends HomeMovieService {
  @override
  Future<Either<MainFailure, HomeRespo>> getComingSoon() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.upComing);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRespo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeRespo>> getNowPlaying() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.nowPlaying);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRespo.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeRespo>> getPopular() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.popular);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRespo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeRespo>> getTopRated() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.topRated);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRespo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
