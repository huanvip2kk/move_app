import 'package:flutter/material.dart';
import 'package:movie_app/config/app_colors.dart';
import 'package:movie_app/config/app_text_style.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/generated/l10n.dart';
import 'package:movie_app/presentation/common/widget/common_category_widget.dart';
import 'package:movie_app/presentation/common/widget/common_divider_widget.dart';
import 'package:movie_app/presentation/common/widget/common_list_movie_widget.dart';
import 'package:movie_app/utils/route/app_routing.dart';

import 'carousel_slider_widget.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({
    Key? key,
    required this.mWidth,
    required this.mHeight,
    required this.trendingTitle,
    required this.author,
    required this.movieName,
    required this.popularTitle,
    required this.brief,
    required this.uploadTime,
    required this.thumbnails,
    required this.time,
  }) : super(key: key);

  final double mWidth;
  final double mHeight;
  final String trendingTitle;
  final String author;
  final String movieName;
  final String popularTitle;
  final String brief;
  final String uploadTime;
  final String thumbnails;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSliderWidget(
            mWidth: mWidth,
            mHeight: mHeight,
            title: 'Title',
            image: Assets.images.slide2.image(
              width: mWidth,
              height: mHeight,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                RouteDefine.detailScreen.name,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonDividerWidget(),
                CommonCategoryWidget(
                  image: Assets.images.slide1.path,
                  title: trendingTitle,
                  author: author,
                  movieName: movieName,
                  itemCount: 3,
                  ratingNumber: 8,
                ),
                const CommonDividerWidget(),
                CommonCategoryWidget(
                  image: Assets.images.slide2.path,
                  title: popularTitle,
                  author: author,
                  movieName: movieName,
                  itemCount: 3,
                  ratingNumber: 5,
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
                    brief: brief,
                    author: author,
                    releaseDate: uploadTime,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteDefine.detailScreen.name,
                      );
                    },
                    thumbnails: thumbnails,
                    title: movieName,
                    time: time,
                  ),
                  itemCount: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}