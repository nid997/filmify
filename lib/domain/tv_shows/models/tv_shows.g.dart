// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_shows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvShows _$TvShowsFromJson(Map<String, dynamic> json) => TvShows(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => TvShowData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TvShowsToJson(TvShows instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

TvShowData _$TvShowDataFromJson(Map<String, dynamic> json) => TvShowData(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      id: json['id'] as int?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    )..originalLanguage = json['original_language'] as String?;

Map<String, dynamic> _$TvShowDataToJson(TvShowData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'id': instance.id,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
    };
