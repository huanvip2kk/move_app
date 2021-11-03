import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../../common/widget/back_app_bar_icon_button.dart';

class ScreenShootsViewWidget extends StatelessWidget {
  const ScreenShootsViewWidget({
    Key? key,
    required this.assetsImage,
  }) : super(key: key);

  final String assetsImage;

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
        imageProvider: AssetImage(
          assetsImage,
        ),
      ),
    );
  }
}
