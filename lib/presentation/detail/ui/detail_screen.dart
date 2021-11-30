import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/presentation/detail/detail_route.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../gen/assets.gen.dart';
import '../../common/widget/back_app_bar_icon_button.dart';
import '../../common/widget/common_divider_widget.dart';
import '../../common/widget/common_icon_button.dart';
import 'widgets/overview_widget.dart';
import 'widgets/screen_shoots_widget.dart';

class DetailScreen extends StatelessWidget {
  final MoviesValue moviesValue;

  const DetailScreen({
    Key? key,
    required this.moviesValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackAppBarIconButton(),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              child: ClipRRect(
                child: Image.network(
                  moviesValue.imagesNetwork,
                  width: double.infinity,
                  height: 400.h,
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 175.h,
                    bottom: 200.h,
                  ),
                  child: InkWell(
                    onTap: () async {
                      if (await canLaunch(moviesValue.link)) print('ok');
                      {
                        await launch(moviesValue.link);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.images.play.assetName),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                      ),
                      child: CommonIconButton(
                        onPressed: () async {
                          if (await canLaunch(moviesValue.link)) print('ok');
                          {
                            await launch(moviesValue.link);
                          }
                        },
                        icon: Icon(
                          Icons.play_arrow_outlined,
                          size: 1.r,
                        ),
                      ),
                    ),
                  ),
                ),
                const CommonDividerWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OverviewWidget(
                        releaseDate: moviesValue.releaseDate,
                        overviewText: moviesValue.desc,
                        author: moviesValue.author,
                        time: moviesValue.time,
                      ),
                      const CommonDividerWidget(),
                      ScreenShootsWidget(
                        imageNetwork: moviesValue.screenshots,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
