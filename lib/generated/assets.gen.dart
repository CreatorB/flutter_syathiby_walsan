/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Calligrapher.ttf
  String get calligrapher => 'assets/fonts/Calligrapher.ttf';

  /// File path: assets/fonts/uthmanic_hafs_v20.ttf
  String get uthmanicHafsV20 => 'assets/fonts/uthmanic_hafs_v20.ttf';

  /// List of all assets
  List<String> get values => [calligrapher, uthmanicHafsV20];
}

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/icon/icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [icon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/android-12-branding-dark.png
  AssetGenImage get android12BrandingDark =>
      const AssetGenImage('assets/images/android-12-branding-dark.png');

  /// File path: assets/images/android-12-branding.png
  AssetGenImage get android12Branding =>
      const AssetGenImage('assets/images/android-12-branding.png');

  /// File path: assets/images/android-12-splash.png
  AssetGenImage get android12Splash =>
      const AssetGenImage('assets/images/android-12-splash.png');

  /// File path: assets/images/compass.svg
  String get compass => 'assets/images/compass.svg';

  /// File path: assets/images/logo-branding-dark.png
  AssetGenImage get logoBrandingDark =>
      const AssetGenImage('assets/images/logo-branding-dark.png');

  /// File path: assets/images/logo-branding.png
  AssetGenImage get logoBranding =>
      const AssetGenImage('assets/images/logo-branding.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/needle.svg
  String get needle => 'assets/images/needle.svg';

  /// File path: assets/images/schools.jpeg
  AssetGenImage get schools =>
      const AssetGenImage('assets/images/schools.jpeg');

  /// List of all assets
  List<dynamic> get values => [
        android12BrandingDark,
        android12Branding,
        android12Splash,
        compass,
        logoBrandingDark,
        logoBranding,
        logo,
        needle,
        schools
      ];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
