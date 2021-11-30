import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_text_style.dart';
import 'common_overview_detail_widget.dart';
import 'common_rating_widget.dart';

class CommonListMovieWidget extends StatelessWidget {
  const CommonListMovieWidget({
    Key? key,
    required this.brief,
    required this.onTap,
    this.thumbnails = 'https://www.example.com/image1.jpg',
    required this.title,
    required this.time,
    required this.author,
    required this.releaseDate,
    required this.IMDB,
  }) : super(key: key);

  final VoidCallback onTap;
  final String thumbnails;
  final String title;
  final String brief;
  final String time;
  final String releaseDate;
  final String author;
  final double IMDB;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image(
                  image: NetworkImage(thumbnails),
                  width: 150.w,
                  height: 220.h,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.r,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.fontSize24.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        brief,
                        style: AppTextStyle.fontSize14.copyWith(
                          color: Colors.grey,
                        ),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(
                      height: 65.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: CommonOverviewDetailWidget(
                          releaseDate: releaseDate,
                          time: time,
                          author: author,
                        ),
                      ),
                    ),
                     CommonRatingWidget(
                      ratingNumber: IMDB,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
