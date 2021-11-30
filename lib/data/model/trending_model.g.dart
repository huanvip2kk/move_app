// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingModel _$TrendingModelFromJson(Map<String, dynamic> json) =>
    TrendingModel(
      trending: (json['trending'] as List<dynamic>)
          .map((e) => Trending.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrendingModelToJson(TrendingModel instance) =>
    <String, dynamic>{
      'trending': instance.trending,
    };

Trending _$TrendingFromJson(Map<String, dynamic> json) => Trending(
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

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
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
