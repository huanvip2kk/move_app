import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../../common/widget/back_app_bar_icon_button.dart';

class ScreenShootsViewWidget extends StatelessWidget {
  const ScreenShootsViewWidget({
    Key? key,
    required this.imagesNetwork,
  }) : super(key: key);

  final String imagesNetwork;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackAppBarIconButton(),
      ),
      extendBodyBehindAppBar: true,
      body: PhotoView(
        imageProvider: NetworkImage(
          imagesNetwork,
        ),
      ),
    );
  }
}
