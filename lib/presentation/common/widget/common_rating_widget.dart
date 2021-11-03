import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_text_style.dart';

class CommonRatingWidget extends StatelessWidget {
  const CommonRatingWidget({
    Key? key,
    required this.ratingNumber,
  }) : super(key: key);

  final double ratingNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AbsorbPointer(
          child: RatingBar.builder(
            itemSize: 20,
            initialRating: ratingNumber/2,
            minRating: 1,
            maxRating: 10,
            allowHalfRating: true,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          ratingNumber.toString(),
          style: AppTextStyle.fontSize18.copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
