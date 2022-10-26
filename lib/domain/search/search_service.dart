import 'package:dartz/dartz.dart';
import 'package:movie_zone_app/domain/home/home_respo/home_respo.dart';

import '../core/failures/main_failures.dart';

abstract class SearchService {
  Future<Either<MainFailure,HomeRespo >> searchMovies({
    required String movieQuery,
  });
}