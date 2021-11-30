// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularModel _$PopularModelFromJson(Map<String, dynamic> json) => PopularModel(
      popular: (json['popular'] as List<dynamic>)
          .map((e) => Popular.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularModelToJson(PopularModel instance) =>
    <String, dynamic>{
      'popular': instance.popular,
    };

Popular _$PopularFromJson(Map<String, dynamic> json) => Popular(
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

Map<String, dynamic> _$PopularToJson(Popular instance) => <String, dynamic>{
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
