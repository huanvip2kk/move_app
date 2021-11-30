import 'package:flutter/material.dart';

import '../../presentation/detail/detail_route.dart';
import '../../presentation/home/home_screen_route.dart';
import '../../presentation/profile/profile_screen_route.dart';
import '../../presentation/search/search_screen_route.dart';
import '../../presentation/settings/settings_route.dart';
import '../../presentation/splash/splash_screen_route.dart';

enum RouteDefine {
  homeScreen,
  detailScreen,
  profileScreen,
  listMovieScreen,
  settingsScreen,
  splashScreen,
  searchScreen,
}

class AppRouting {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      RouteDefine.homeScreen.name: (_) => HomeScreenRoute.route,
      RouteDefine.detailScreen.name: (_) => DetailScreenRoute.route(
            moviesValue: settings.arguments as MoviesValue,
          ),
      RouteDefine.profileScreen.name: (_) => ProfileScreenRoute.route,
      RouteDefine.splashScreen.name: (_) => SplashScreenRoute.route,
      RouteDefine.searchScreen.name: (_) => SearchScreenRoute.route,
      RouteDefine.settingsScreen.name: (_) => SettingsScreenRoute.route,
    };

    final routeBuilder = routes[settings.name];

    return MaterialPageRoute(
      builder: (context) => routeBuilder!(context),
      settings: RouteSettings(name: settings.name),
    );
  }
}

extension RouteExt on Object {
  String get name => toString().substring(toString().indexOf('.') + 1);
}
