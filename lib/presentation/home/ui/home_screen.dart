// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../../config/app_colors.dart';
// import '../../../config/app_text_style.dart';
// import '../../../gen/assets.gen.dart';
// import '../../../generated/l10n.dart';
// import '../../../utils/route/app_routing.dart';
// import '../../common/widget/common_category_widget.dart';
// import '../../common/widget/common_divider_widget.dart';
// import '../../common/widget/common_icon_button.dart';
// import '../../common/widget/common_list_movie_widget.dart';
// import 'widgets/carousel_slider_widget.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);
//   final String trendingTitle = S.current.trending;
//   final String popularTitle = S.current.popular;
//   final String author = "Author";
//   final String movieName = "Movie name";
//   final String time = '30 minutes';
//   final String uploadTime = '10/10/2021';
//   final String brief =
//       "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
//
//   final String thumbnails = Assets.images.slide2.path;
//
//   @override
//   Widget build(BuildContext context) {
//     final double mWidth = MediaQuery.of(context).size.width;
//     final double mHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.transparent,
//         elevation: 0,
//         title: Text(
//           'Movie app',
//           style: AppTextStyle.fontSize24.copyWith(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           CommonIconButton(
//             onPressed: () {
//               Navigator.pushNamed(
//                 context,
//                 RouteDefine.searchScreen.name,
//               );
//             },
//             icon: const Icon(Icons.search),
//             color: AppColors.black,
//           ),
//           CommonIconButton(
//             onPressed: () {
//               Navigator.pushNamed(
//                 context,
//                 RouteDefine.settingsScreen.name,
//               );
//             },
//             icon: const Icon(Icons.settings),
//             color: AppColors.black,
//           ),
//         ],
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CarouselSliderWidget(
//               mWidth: mWidth,
//               mHeight: mHeight,
//               title: 'Title',
//               image: Assets.images.slide2.image(
//                 width: mWidth,
//                 height: mHeight,
//                 fit: BoxFit.cover,
//               ),
//               onTap: () {
//                 Navigator.pushNamed(
//                   context,
//                   RouteDefine.detailScreen.name,
//                 );
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const CommonDividerWidget(),
//                   CommonCategoryWidget(
//                     image: Assets.images.slide1.path,
//                     title: trendingTitle,
//                     author: author,
//                     movieName: movieName,
//                     itemCount: 3,
//                     ratingNumber: 8,
//                   ),
//                   const CommonDividerWidget(),
//                   CommonCategoryWidget(
//                     image: Assets.images.slide2.path,
//                     title: popularTitle,
//                     author: author,
//                     movieName: movieName,
//                     itemCount: 3,
//                     ratingNumber: 5,
//                   ),
//                   const CommonDividerWidget(),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Text(
//                       S.current.maybeYouWantToSee,
//                       style: AppTextStyle.fontSize20.copyWith(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: AppColors.grey,
//                       ),
//                     ),
//                   ),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemBuilder: (context, index) => CommonListMovieWidget(
//                       brief: brief,
//                       author: author,
//                       releaseDate: uploadTime,
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           RouteDefine.detailScreen.name,
//                         );
//                       },
//                       thumbnails: thumbnails,
//                       title: movieName,
//                       time: time,
//                     ),
//                     itemCount: 3,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/config/breakpoint.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_text_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../../utils/route/app_routing.dart';
import '../../common/widget/common_category_widget.dart';
import '../../common/widget/common_divider_widget.dart';
import '../../common/widget/common_icon_button.dart';
import '../../common/widget/common_list_movie_widget.dart';
import 'widgets/carousel_slider_widget.dart';
import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final String trendingTitle = S.current.trending;
  final String popularTitle = S.current.popular;
  final String author = "Author";
  final String movieName = "Movie name";
  final String time = '30 minutes';
  final String uploadTime = '10/10/2021';
  final String brief =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";

  final String thumbnails = Assets.images.slide2.path;

  @override
  Widget build(BuildContext context) {
    final double mWidth = MediaQuery.of(context).size.width;
    final double mHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: Text(
          'Movie app',
          style: AppTextStyle.fontSize24.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CommonIconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                RouteDefine.searchScreen.name,
              );
            },
            icon: const Icon(Icons.search),
            color: AppColors.black,
          ),
          CommonIconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                RouteDefine.settingsScreen.name,
              );
            },
            icon: const Icon(Icons.settings),
            color: AppColors.black,
          ),
        ],
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, dimens){
          if(dimens.maxWidth >= Breakpoint.tablet){
            return LargeScreen(trendingTitle: trendingTitle, author: author, movieName: movieName, popularTitle: popularTitle, brief: brief, uploadTime: uploadTime, thumbnails: thumbnails, time: time);
          }
          return SmallScreen(mWidth: mWidth, mHeight: mHeight, trendingTitle: trendingTitle, author: author, movieName: movieName, popularTitle: popularTitle, brief: brief, uploadTime: uploadTime, thumbnails: thumbnails, time: time);
        },
      ),
    );
  }
}




