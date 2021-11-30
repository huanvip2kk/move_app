// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maybe_you_want_to_see_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaybeYouWantToSeeModel _$MaybeYouWantToSeeModelFromJson(
        Map<String, dynamic> json) =>
    MaybeYouWantToSeeModel(
      maybeyouwanttosee: (json['maybeyouwanttosee'] as List<dynamic>)
          .map((e) => MaybeYouWantToSee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MaybeYouWantToSeeModelToJson(
        MaybeYouWantToSeeModel instance) =>
    <String, dynamic>{
      'maybeyouwanttosee': instance.maybeyouwanttosee,
    };

MaybeYouWantToSee _$MaybeYouWantToSeeFromJson(Map<String, dynamic> json) =>
    MaybeYouWantToSee(
      time: json['time'] as String?,
      IMDB: json['IMDB'] as String?,
      avatar: json['avatar'] as String?,
      authorName: json['authorName'] as String?,
      date: json['date'] as String?,
      introduce: json['introduce'] as String?,
      movieLink: json['movieLink'] as String?,
      movieName: json['movieName'] as String?,
      screenshot: json['screenshot'] as String?,
    );

Map<String, dynamic> _$MaybeYouWantToSeeToJson(MaybeYouWantToSee instance) =>
    <String, dynamic>{
      'movieName': instance.movieName,
      'authorName': instance.authorName,
      'IMDB': instance.IMDB,
      'movieLink': instance.movieLink,
      'introduce': instance.introduce,
      'date': instance.date,
      'time': instance.time,
      'avatar': instance.avatar,
      'screenshot': instance.screenshot,
    };
