import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/app_text_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../generated/l10n.dart';
import 'screen_shoots_view_widget.dart';

class ScreenShootsWidget extends StatelessWidget {
  const ScreenShootsWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.screenShoots,
          style: AppTextStyle.fontSize18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 200.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      child: image,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => ScreenShootsViewWidget(
                            assetsImage: Assets.images.slide1.path,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
