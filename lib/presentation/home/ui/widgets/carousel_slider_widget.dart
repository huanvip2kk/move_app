import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/app_text_style.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key? key,
    required this.mWidth,
    required this.mHeight,
    required this.title,
    required this.image,
    required this.onTap,
    this.itemCount,
  }) : super(key: key);

  final double mWidth;
  final double mHeight;
  final String title;
  final VoidCallback onTap;
  final Widget image;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemCount ?? 3,
      itemBuilder: (context, index, idx) {
        return GestureDetector(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              ClipRRect(
                child: image,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: AppTextStyle.fontSize20.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
      ),
    );
  }
}
