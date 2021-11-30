import 'package:flutter/material.dart';
import 'package:movie_app/config/app_colors.dart';
import 'package:movie_app/config/app_text_style.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/generated/l10n.dart';
import 'package:movie_app/presentation/common/widget/common_category_widget.dart';
import 'package:movie_app/presentation/common/widget/common_divider_widget.dart';
import 'package:movie_app/presentation/common/widget/common_list_movie_widget.dart';
import 'package:movie_app/presentation/detail/detail_route.dart';
import 'package:movie_app/presentation/home/bloc/home_bloc.dart';
import 'package:movie_app/utils/route/app_routing.dart';

import 'carousel_slider_widget.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({
    Key? key,
    required this.mWidth,
    required this.mHeight,
    required this.trendingTitle,
    required this.popularTitle,
    required this.state,
  }) : super(key: key);

  final double mWidth;
  final double mHeight;
  final String trendingTitle;
  final String popularTitle;

  final HomeLoadedState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSliderWidget(
            mWidth: mWidth,
            mHeight: mHeight,
            sliderModel: state.sliderModel,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonDividerWidget(),
                CommonCategoryWidget(
                  popularModel: state.popularModel,
                  trendingModel: state.trendingModel,
                  title: trendingTitle,
                ),
                const CommonDividerWidget(),
                CommonCategoryWidget(
                  trendingModel: state.trendingModel,
                  popularModel: state.popularModel,
                  isTrending: false,
                  title: popularTitle,
                ),
                const CommonDividerWidget(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    S.current.maybeYouWantToSee,
                    style: AppTextStyle.fontSize20.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CommonListMovieWidget(
                    IMDB: double.parse(
                      state.maybeYouWantToSeeModel.maybeyouwanttosee[index].IMDB
                          .toString(),
                    ),
                    brief: state.maybeYouWantToSeeModel.maybeyouwanttosee[index]
                        .introduce
                        .toString(),
                    author: state.maybeYouWantToSeeModel
                        .maybeyouwanttosee[index].authorName
                        .toString(),
                    releaseDate: state
                        .maybeYouWantToSeeModel.maybeyouwanttosee[index].date
                        .toString(),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteDefine.detailScreen.name,
                        arguments: MoviesValue(
                          time: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].time
                              .toString(),
                          author: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].authorName
                              .toString(),
                          desc: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].introduce
                              .toString(),
                          imagesNetwork: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].avatar
                              .toString(),
                          link: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].movieLink
                              .toString(),
                          releaseDate: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].date
                              .toString(),
                          screenshots: state.maybeYouWantToSeeModel
                              .maybeyouwanttosee[index].screenshot
                              .toString(),
                        ),
                      );
                    },
                    thumbnails: state
                        .maybeYouWantToSeeModel.maybeyouwanttosee[index].avatar
                        .toString(),
                    title: state.maybeYouWantToSeeModel.maybeyouwanttosee[index]
                        .movieName
                        .toString(),
                    time: state
                        .maybeYouWantToSeeModel.maybeyouwanttosee[index].time
                        .toString(),
                  ),
                  itemCount:
                      state.maybeYouWantToSeeModel.maybeyouwanttosee.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
