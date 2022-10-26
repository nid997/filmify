import 'package:movie_zone_app/core/string.dart';
import 'package:movie_zone_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const tvShows = "$kBaseUrl/tv/popular?api_key=$apiKey";

  static const popularShows = "$kBaseUrl/tv/top_rated?api_key=$apiKey";

  static const nowPlaying = "$kBaseUrl/movie/now_playing?api_key=$apiKey";

  static const popular = "$kBaseUrl/movie/popular?api_key=$apiKey";

  static const topRated = "$kBaseUrl/movie/top_rated?api_key=$apiKey";

  static const upComing = "$kBaseUrl/movie/upcoming?api_key=$apiKey";

  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
}
