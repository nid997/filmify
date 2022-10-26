import 'package:dartz/dartz.dart';
import 'package:movie_zone_app/domain/core/failures/main_failures.dart';
import 'package:movie_zone_app/domain/home/home_respo/home_respo.dart';

abstract class HomeMovieService {
  Future<Either<MainFailure, HomeRespo>> getComingSoon();
  Future<Either<MainFailure, HomeRespo>> getNowPlaying();
  Future<Either<MainFailure, HomeRespo>> getPopular();
  Future<Either<MainFailure, HomeRespo>> getTopRated();
}
