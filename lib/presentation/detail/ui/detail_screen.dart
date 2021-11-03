import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../gen/assets.gen.dart';
import '../../common/widget/back_app_bar_icon_button.dart';
import '../../common/widget/common_divider_widget.dart';
import '../../common/widget/common_icon_button.dart';
import 'widgets/overview_widget.dart';
import 'widgets/screen_shoots_widget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final String overviewText =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

  final String title = 'Title';
  final String releaseDate = '10/10/2021';
  final String author = "Author";
  final String time = "30 minutes";
  final String youtubeUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackAppBarIconButton(
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              child: ClipRRect(
                child: Assets.images.slide1.image(
                    width: double.infinity, height: 400.h, fit: BoxFit.cover),
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
                  child: CommonIconButton(
                    onPressed: () async {
                      if (await canLaunch(youtubeUrl)) {
                        await launch(youtubeUrl);
                      }
                    },
                    icon: Icon(
                      Icons.play_arrow_outlined,
                      size: 75.r,
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
                        releaseDate: releaseDate,
                        overviewText: overviewText,
                        author: author,
                        time: time,
                      ),
                      const CommonDividerWidget(),
                      ScreenShootsWidget(
                        image: Assets.images.slide3.image(
                          fit: BoxFit.cover,
                          width: 350.w,
                          height: 175.h,
                        ),
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
