// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeRespo _$HomeRespoFromJson(Map<String, dynamic> json) => HomeRespo(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeRespoData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeRespoToJson(HomeRespo instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

HomeRespoData _$HomeRespoDataFromJson(Map<String, dynamic> json) =>
    HomeRespoData(
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$HomeRespoDataToJson(HomeRespoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };
