import 'package:json_annotation/json_annotation.dart';
part 'slider_model.g.dart';

@JsonSerializable()
class SliderModel {

  final List<Slider> slider;

  SliderModel({required this.slider});


  factory SliderModel.fromJson(Map<String, dynamic> json) => _$SliderModelFromJson(json);

  Map<String, dynamic> toJson() => _$SliderModelToJson(this);
}

@JsonSerializable()
class Slider {
  final String? movieName;

  final String? authorName;
  final String? IMDB;
  final String? movieLink;
  final String? introduce;
  final String? date;
  final String? time;
  final String? avatar;
  final String? screenshot;

  Slider({
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

  factory Slider.fromJson(Map<String, dynamic> json) => _$SliderFromJson(json);

  Map<String, dynamic> toJson() => _$SliderToJson(this);
}