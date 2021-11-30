import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/maybe_you_want_to_see_model.dart';
import '../model/popular_model.dart';
import '../model/slider_model.dart';
import '../model/trending_model.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://phimapi.000webhostapp.com/api/controller")
abstract class GetApi {
  factory GetApi(Dio dio) = _GetApi;
  @GET("/readPopular.php")
  Future<PopularModel> getPopular();

  @GET("/readTrending.php")
  Future<TrendingModel> getTrending();


  @GET("/readSlider.php")
  Future<SliderModel> getSlider();

  @GET("/readMayBeYouWantToSee.php")
  Future<MaybeYouWantToSeeModel> getMaybeYouWantToSee();
}
