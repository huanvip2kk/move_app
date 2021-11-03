import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_text_style.dart';

class CommonColumnOverViewDetailWidget extends StatelessWidget {
  const CommonColumnOverViewDetailWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: AppTextStyle.fontSize14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          value,
          style: AppTextStyle.fontSize14.copyWith(color: Colors.orange),
        ),
      ],
    );
  }
}
