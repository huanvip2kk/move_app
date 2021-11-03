import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/app_colors.dart';
import 'common_icon_button.dart';

class BackAppBarIconButton extends StatelessWidget {
  const BackAppBarIconButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CommonIconButton(
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white70,
          border: Border.all(
            color: AppColors.white70,
          ),
        ),
        child: Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ),
        width: 30.w,
        height: 40.h,
      ),
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}
