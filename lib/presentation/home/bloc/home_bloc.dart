import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/data/model/maybe_you_want_to_see_model.dart';
import 'package:movie_app/data/model/popular_model.dart';
import 'package:movie_app/data/model/slider_model.dart';
import 'package:movie_app/data/model/trending_model.dart';
import 'package:movie_app/data/repository/movies_repo.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApiRepoImpl apiRepoImpl;

  HomeBloc({
    required this.apiRepoImpl,
  }) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<HomeLoadEvent>(
      (event, emit) async {
        try {
          final PopularModel popularModel = await apiRepoImpl.getPopular();
          final TrendingModel trendingModel = await apiRepoImpl.getTrending();
          final SliderModel sliderModel = await apiRepoImpl.getSlider();

          final MaybeYouWantToSeeModel maybeYouWantToSeeModel =
              await apiRepoImpl.getMaybeYouWantToSee();

          emit(
            HomeLoadedState(
              maybeYouWantToSeeModel: maybeYouWantToSeeModel,
              popularModel: popularModel,
              sliderModel: sliderModel,
              trendingModel: trendingModel,
            ),
          );
        } on Exception catch (e) {
          print('error $e');
        }
      },
    );
  }
}
