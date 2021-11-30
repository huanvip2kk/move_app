import 'package:flutter/material.dart';
import 'package:movie_app/data/model/popular_model.dart';
import 'package:movie_app/data/model/trending_model.dart';
import 'package:movie_app/presentation/detail/detail_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_text_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../../utils/route/app_routing.dart';
import '../../common/widget/back_app_bar_icon_button.dart';
import '../../common/widget/common_icon_button.dart';
import '../../common/widget/common_list_movie_widget.dart';

class ListMovieScreen extends StatelessWidget {
  ListMovieScreen({
    Key? key,
    required this.title,
    required this.trendingModel,
    required this.popularModel,
    this.isTrending = true,
  }) : super(key: key);
  final String title;
  final bool isTrending;
  final PopularModel popularModel;
  final TrendingModel trendingModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackAppBarIconButton(),
        title: Text(
          title,
          style: AppTextStyle.fontSize20,
        ),
        centerTitle: true,
        actions: [
          CommonIconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.sh,
          child: ListView.builder(
            itemBuilder: (context, index) => CommonListMovieWidget(
              IMDB: double.parse(
                isTrending
                    ? trendingModel.trending[index].IMDB.toString()
                    : popularModel.popular[index].IMDB.toString(),
              ),
              brief: isTrending
                  ? trendingModel.trending[index].introduce.toString()
                  : popularModel.popular[index].introduce.toString(),
              author: isTrending
                  ? trendingModel.trending[index].authorName.toString()
                  : popularModel.popular[index].authorName.toString(),
              releaseDate: isTrending
                  ? trendingModel.trending[index].date.toString()
                  : popularModel.popular[index].date.toString(),
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
              thumbnails: isTrending
                  ? trendingModel.trending[index].avatar.toString()
                  : popularModel.popular[index].avatar.toString(),
              title: isTrending
                  ? trendingModel.trending[index].movieName.toString()
                  : popularModel.popular[index].movieName.toString(),
              time: isTrending
                  ? trendingModel.trending[index].time.toString()
                  : popularModel.popular[index].time.toString(),
            ),
            itemCount: isTrending
                ? trendingModel.trending.length
                : popularModel.popular.length,
          ),
        ),
      ),
    );
  }
}
