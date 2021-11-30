import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/api/api.dart';
import 'package:movie_app/data/repository/movies_repo.dart';

import 'ui/detail_screen.dart';

class DetailScreenRoute {
  static Widget route({required MoviesValue moviesValue}) => DetailScreen(moviesValue: moviesValue,);
}

class MoviesValue {
  final String imagesNetwork;
  final String link;
  final String releaseDate;
  final String desc;
  final String author;
  final String time;
  final String screenshots;

  MoviesValue({
    required this.time,
    required this.author,
    required this.desc,
    required this.imagesNetwork,
    required this.link,
    required this.releaseDate,
    required this.screenshots,
  });
}
