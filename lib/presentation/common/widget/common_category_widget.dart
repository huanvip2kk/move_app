import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_text_style.dart';
import '../../../generated/l10n.dart';
import '../../../utils/route/app_routing.dart';
import 'common_rating_widget.dart';
import 'common_text_button.dart';

class CommonCategoryWidget extends StatelessWidget {
  const CommonCategoryWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.movieName,
    required this.itemCount,
    required this.ratingNumber,
    this.thumbHeight,
    this.thumbWidth,
  }) : super(key: key);

  final String title;
  final String image;
  final String movieName;
  final String author;
  final int itemCount;
  final double ratingNumber;
  final double? thumbWidth;
  final double? thumbHeight;

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
                  Navigator.pushNamed(
                    context,
                    RouteDefine.listMovieScreen.name,
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 320.h,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image(
                      image: AssetImage(image),
                      width: thumbWidth ?? 170.w,
                      height: thumbHeight ?? 240.h,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10.r,
                      ),
                    ),
                  ),
                  Text(
                    movieName,
                    style: AppTextStyle.fontSize20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    author,
                    style: AppTextStyle.fontSize14.copyWith(
                      color: AppColors.grey400,
                    ),
                  ),
                  CommonRatingWidget(ratingNumber: ratingNumber),
                ],
              ),
            ),
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
          ),
        ),
      ],
    );
  }
}

