import 'package:movie_app/data/api/api.dart';
import 'package:movie_app/data/model/maybe_you_want_to_see_model.dart';
import 'package:movie_app/data/model/popular_model.dart';
import 'package:movie_app/data/model/slider_model.dart';
import 'package:movie_app/data/model/trending_model.dart';

class ApiRepoImpl {
  final GetApi getApi;

  ApiRepoImpl({
    required this.getApi,
  });

  Future<PopularModel> getPopular() async {
    final response = await getApi.getPopular();
    return response;
  }

  Future<TrendingModel> getTrending() async {
    final response = await getApi.getTrending();
    return response;
  }

  Future<SliderModel> getSlider() async {
    final response = await getApi.getSlider();
    return response;
  }

  Future<MaybeYouWantToSeeModel> getMaybeYouWantToSee() async {
    final response = await getApi.getMaybeYouWantToSee();
    return response;
  }
}
