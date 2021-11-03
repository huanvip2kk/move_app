import 'package:flutter/material.dart';

import '../../../config/app_text_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../../utils/route/app_routing.dart';
import '../../common/widget/back_app_bar_icon_button.dart';
import '../../common/widget/common_icon_button.dart';
import '../../common/widget/common_list_movie_widget.dart';

class ListMovieScreen extends StatelessWidget {
  ListMovieScreen({
    Key? key,
  }) : super(key: key);

  final String title = S.current.trending;
  final String movieName = 'Movie name';
  final String brief =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
  final String time = '30 minutes';
  final String releaseDate = '30/2/2021';
  final String author = 'Author';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackAppBarIconButton(),
        title: Text(
          title,
          style: AppTextStyle.fontSize20,
        ),
        centerTitle: true,
        actions: [
          CommonIconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (context, index) => CommonListMovieWidget(
              brief: brief,
              author: author,
              releaseDate: releaseDate,
              onTap: () => Navigator.pushNamed(
                context,
                RouteDefine.detailScreen.name,
              ),
              thumbnails: Assets.images.slide2.path,
              title: movieName,
              time: time,
            ),
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
