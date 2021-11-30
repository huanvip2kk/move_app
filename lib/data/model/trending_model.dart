import 'package:json_annotation/json_annotation.dart';

part 'trending_model.g.dart';

@JsonSerializable()
class TrendingModel {
  final List<Trending> trending;

  TrendingModel({
    required this.trending,
  });

  factory TrendingModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingModelToJson(this);
}

@JsonSerializable()
class Trending {
  final String? movieName;

  final String? authorName;
  final String? IMDB;
  final String? movieLink;
  final String? introduce;
  final String? date;
  final String? time;
  final String? avatar;
  final String? screenshot;

  Trending({
    this.time,
    this.IMDB,
    this.avatar,
    this.authorName,
    this.date,
    this.introduce,
    this.movieLink,
    this.movieName,
    this.screenshot,
  });

  factory Trending.fromJson(Map<String, dynamic> json) =>
      _$TrendingFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingToJson(this);
}
