/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/notFound.jpg
  AssetGenImage get notFound =>
      const AssetGenImage('assets/images/notFound.jpg');

  /// File path: assets/images/play.png
  AssetGenImage get play => const AssetGenImage('assets/images/play.png');

  /// File path: assets/images/slide1.jpg
  AssetGenImage get slide1 => const AssetGenImage('assets/images/slide1.jpg');

  /// File path: assets/images/slide2.jpg
  AssetGenImage get slide2 => const AssetGenImage('assets/images/slide2.jpg');

  /// File path: assets/images/slide3.jpg
  AssetGenImage get slide3 => const AssetGenImage('assets/images/slide3.jpg');
}

class $AssetsSvgImagesGen {
  const $AssetsSvgImagesGen();

  /// File path: assets/svg_images/movie.svg
  String get movie => 'assets/svg_images/movie.svg';

  /// File path: assets/svg_images/play.svg
  String get play => 'assets/svg_images/play.svg';
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgImagesGen svgImages = $AssetsSvgImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
