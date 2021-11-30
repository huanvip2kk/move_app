import 'package:json_annotation/json_annotation.dart';
part 'popular_model.g.dart';


@JsonSerializable()
class PopularModel {
  final List<Popular> popular;

  PopularModel({
    required this.popular,
  });

  factory PopularModel.fromJson(Map<String, dynamic> json) =>
      _$PopularModelFromJson(json);

  Map<String, dynamic> toJson() => _$PopularModelToJson(this);
}


@JsonSerializable()
class Popular {
  final String? movieName;

  final String? authorName;
  final String? IMDB;
  final String? movieLink;
  final String? introduce;
  final String? date;
  final String? time;
  final String? avatar;
  final String? screenshot;

  Popular({
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

  factory Popular.fromJson(Map<String, dynamic> json) =>
      _$PopularFromJson(json);

  Map<String, dynamic> toJson() => _$PopularToJson(this);
}