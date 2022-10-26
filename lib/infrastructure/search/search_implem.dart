import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_zone_app/domain/home/home_respo/home_respo.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_zone_app/domain/search/search_service.dart';
import '../../domain/core/api_end_points.dart';

@LazySingleton(as: SearchService)
class SearchImple extends SearchService {
  @override
  Future<Either<MainFailure, HomeRespo>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {
          'query': movieQuery,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeRespo.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverFailure());
    }
  }
}
