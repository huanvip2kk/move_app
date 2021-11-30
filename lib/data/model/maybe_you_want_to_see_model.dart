import 'package:json_annotation/json_annotation.dart';
part 'maybe_you_want_to_see_model.g.dart';

@JsonSerializable()
class MaybeYouWantToSeeModel {

  final List<MaybeYouWantToSee> maybeyouwanttosee;

  MaybeYouWantToSeeModel({
    required this.maybeyouwanttosee,
  });

  factory MaybeYouWantToSeeModel.fromJson(Map<String, dynamic> json) =>
      _$MaybeYouWantToSeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$MaybeYouWantToSeeModelToJson(this);
}

@JsonSerializable()
class MaybeYouWantToSee {
  final String? movieName;

  final String? authorName;
  final String? IMDB;
  final String? movieLink;
  final String? introduce;
  final String? date;
  final String? time;
  final String? avatar;
  final String? screenshot;

  MaybeYouWantToSee({
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

  factory MaybeYouWantToSee.fromJson(Map<String, dynamic> json) =>
      _$MaybeYouWantToSeeFromJson(json);

  Map<String, dynamic> toJson() => _$MaybeYouWantToSeeToJson(this);
}