import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewWidget extends StatelessWidget {
  const PhotoViewWidget({Key? key, required this.image,}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoView(
        imageProvider: AssetImage(image),

      ),
    );
  }
}
