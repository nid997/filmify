import 'package:json_annotation/json_annotation.dart';
part 'home_respo.g.dart';

@JsonSerializable()
class HomeRespo {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<HomeRespoData> results;

  HomeRespo({this.page, this.results = const []});

  factory HomeRespo.fromJson(Map<String, dynamic> json) {
    return _$HomeRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeRespoToJson(this);
}

@JsonSerializable()
class HomeRespoData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  HomeRespoData({
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
  });

  factory HomeRespoData.fromJson(Map<String, dynamic> json) {
    return _$HomeRespoDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeRespoDataToJson(this);
}
