import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/data/model/maybe_you_want_to_see_model.dart';
import 'package:movie_app/data/model/slider_model.dart';
import 'package:movie_app/presentation/detail/detail_route.dart';
import 'package:movie_app/utils/route/app_routing.dart';

import '../../../../config/app_text_style.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key? key,
    required this.mWidth,
    required this.mHeight,
    required this.sliderModel,
  }) : super(key: key);

  final double mWidth;
  final double mHeight;
  final SliderModel sliderModel;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliderModel.slider.length,
      itemBuilder: (context, index, idx) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              RouteDefine.detailScreen.name,
              arguments: MoviesValue(
                time: sliderModel.slider[index].time.toString(),
                author: sliderModel.slider[index].authorName.toString(),
                desc: sliderModel.slider[index].introduce.toString(),
                imagesNetwork: sliderModel.slider[index].avatar.toString(),
                link: sliderModel.slider[index].movieLink.toString(),
                releaseDate: sliderModel.slider[index].date.toString(),
                screenshots: sliderModel.slider[index].screenshot.toString(),
              ),
            );
          },
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              ClipRRect(
                child: Image.network(
                  sliderModel.slider[index].avatar.toString(),
                  width: mWidth,
                  height: mHeight,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(

                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  child: Text(
                    sliderModel.slider[index].movieName.toString(),
                    style: AppTextStyle.fontSize20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
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
