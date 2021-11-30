import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/api/api.dart';
import 'package:movie_app/data/repository/movies_repo.dart';
import 'package:movie_app/presentation/home/bloc/home_bloc.dart';

import 'ui/home_screen.dart';

class HomeScreenRoute {
  static Widget get route => BlocProvider(
        create: (context) => HomeBloc(
          apiRepoImpl: ApiRepoImpl(
            getApi: GetApi(
              Dio(),
            ),
          ),
        )..add(
            HomeLoadEvent(),
          ),
        child: HomeScreen(),
      );
}
