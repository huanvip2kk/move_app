part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final PopularModel popularModel;
  final TrendingModel trendingModel;
  final SliderModel sliderModel;
  final MaybeYouWantToSeeModel maybeYouWantToSeeModel;

  HomeLoadedState({
    required this.maybeYouWantToSeeModel,
    required this.sliderModel,
    required this.trendingModel,
    required this.popularModel,
  });
}
