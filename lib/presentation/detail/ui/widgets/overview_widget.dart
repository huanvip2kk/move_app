import 'package:flutter/material.dart';
import '../../../../config/app_text_style.dart';
import '../../../../generated/l10n.dart';
import '../../../common/widget/common_overview_detail_widget.dart';

import 'expandable_text.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    Key? key,
    required this.releaseDate,
    required this.overviewText,
    required this.author,
    required this.time,
  }) : super(key: key);

  final String overviewText;
  final String releaseDate;
  final String time;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.overview,
          style: AppTextStyle.fontSize18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          child: ExpandableText(
            overviewText,
          ),
        ),
        CommonOverviewDetailWidget(releaseDate: releaseDate, time: time, author: author),
      ],
    );
  }
}

