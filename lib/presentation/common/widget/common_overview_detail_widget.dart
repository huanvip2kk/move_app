import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';

import 'common_column_overview_detail_widget.dart';

class CommonOverviewDetailWidget extends StatelessWidget {
  const CommonOverviewDetailWidget({
    Key? key,
    required this.releaseDate,
    required this.time,
    required this.author,
  }) : super(key: key);

  final String releaseDate;
  final String time;
  final String author;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CommonColumnOverViewDetailWidget(
            title: S.current.releaseDate,
            value: releaseDate,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: CommonColumnOverViewDetailWidget(
              title: S.current.time,
              value: time,
            ),
          ),
          CommonColumnOverViewDetailWidget(
            title: S.current.author,
            value: author,
          ),
        ],
      ),
    );
  }
}
