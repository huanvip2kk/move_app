import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/app_colors.dart';

class CommonDividerWidget extends StatelessWidget {
  const CommonDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Divider(
        height: 10.h,color: AppColors.dangerColor,
      ),
    );
  }
}
