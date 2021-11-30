import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/data/model/popular_model.dart';
import 'package:movie_app/data/model/trending_model.dart';
import 'package:movie_app/presentation/detail/detail_route.dart';
import 'package:movie_app/presentation/home/bloc/home_bloc.dart';
import 'package:movie_app/presentation/list_movie/ui/list_movie_screen.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_text_style.dart';
import '../../../generated/l10n.dart';
import '../../../utils/route/app_routing.dart';
import 'common_rating_widget.dart';
import 'common_text_button.dart';

class CommonCategoryWidget extends StatelessWidget {
  const CommonCategoryWidget({
    Key? key,
    required this.trendingModel,
    required this.popularModel,
    this.isTrending = true,
    required this.title,
  }) : super(key: key);

  final String title;
  final bool isTrending;
  final TrendingModel trendingModel;
  final PopularModel popularModel;

  int get limitLength {
    return (isTrending ? trendingModel.trending.length > 3 : popularModel.popular.length  > 3) ? 3 : trendingModel.trending.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.fontSize20.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                ),
              ),
              CommonTextButton(
                text: S.current.more,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListMovieScreen(
                        title: title,
                        trendingModel: trendingModel,
                        popularModel: popularModel,
                        isTrending: isTrending,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 370.h,
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () => isTrending
                  ? Navigator.pushNamed(
                      context,
                      RouteDefine.detailScreen.name,
                      arguments: MoviesValue(
                        time: trendingModel.trending[index].time.toString(),
                        author:
                            trendingModel.trending[index].authorName.toString(),
                        desc:
                            trendingModel.trending[index].introduce.toString(),
                        imagesNetwork:
                            trendingModel.trending[index].avatar.toString(),
                        link:
                            trendingModel.trending[index].movieLink.toString(),
                        releaseDate:
                            trendingModel.trending[index].date.toString(),
                        screenshots: trendingModel.trending[index].screenshot
                            .toString(),
                      ),
                    )
                  : Navigator.pushNamed(
                      context,
                      RouteDefine.detailScreen.name,
                      arguments: MoviesValue(
                        time: popularModel.popular[index].time.toString(),
                        author:
                            popularModel.popular[index].authorName.toString(),
                        desc: popularModel.popular[index].introduce.toString(),
                        imagesNetwork:
                            popularModel.popular[index].avatar.toString(),
                        link: popularModel.popular[index].movieLink.toString(),
                        releaseDate:
                            popularModel.popular[index].date.toString(),
                        screenshots:
                            popularModel.popular[index].screenshot.toString(),
                      ),
                    ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image(
                        image: NetworkImage(
                          isTrending
                              ? trendingModel.trending[index].avatar.toString()
                              : popularModel.popular[index].avatar.toString(),
                        ),
                        width: 170.w,
                        height: 240.h,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10.r,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        isTrending
                            ? trendingModel.trending[index].movieName.toString()
                            : popularModel.popular[index].movieName.toString(),
                        style: AppTextStyle.fontSize20.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ),
                    Text(
                      isTrending
                          ? trendingModel.trending[index].authorName.toString()
                          : popularModel.popular[index].authorName.toString(),
                      style: AppTextStyle.fontSize14.copyWith(
                        color: AppColors.grey400,
                      ),
                    ),
                    CommonRatingWidget(
                      ratingNumber: double.parse(
                        isTrending
                            ? trendingModel.trending[index].IMDB.toString()
                            : popularModel.popular[index].IMDB.toString(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
            itemCount: limitLength,
          ),
        ),
      ],
    );
  }
}
