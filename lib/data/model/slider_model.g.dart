// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) => SliderModel(
      slider: (json['slider'] as List<dynamic>)
          .map((e) => Slider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SliderModelToJson(SliderModel instance) =>
    <String, dynamic>{
      'slider': instance.slider,
    };

Slider _$SliderFromJson(Map<String, dynamic> json) => Slider(
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

Map<String, dynamic> _$SliderToJson(Slider instance) => <String, dynamic>{
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
