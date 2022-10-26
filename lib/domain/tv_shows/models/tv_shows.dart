import 'package:json_annotation/json_annotation.dart';

part 'tv_shows.g.dart';

@JsonSerializable()
class TvShows {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<TvShowData> results;

  TvShows({this.page, this.results = const []});

  factory TvShows.fromJson(Map<String, dynamic> json) {
    return _$TvShowsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TvShowsToJson(this);
}

@JsonSerializable()
class TvShowData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'first_air_date')
  String? firstAirDate;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_name')
  String? originalName;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  TvShowData({
    this.backdropPath,
    this.firstAirDate,
    this.id,
    this.originalName,
    this.overview,
    this.posterPath,
  });

  factory TvShowData.fromJson(Map<String, dynamic> json) {
    return _$TvShowDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TvShowDataToJson(this);
}
