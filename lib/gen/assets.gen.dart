/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************
import 'package:flutter/widgets.dart';

class $AssetsPhotoGen {
  const $AssetsPhotoGen();

  /// File path: assets/photo/katsummy.png
  AssetGenImage get katsummy =>
      const AssetGenImage('assets/photo/katsummy.png');
  AssetGenImage get okaryo => const AssetGenImage('assets/photo/okaryo.png');
}

class $AssetsSponsorGen {
  const $AssetsSponsorGen();
}

class Assets {
  Assets._();

  static const AssetGenImage banner = AssetGenImage('assets/banner.png');
  static const String discordLogo = 'assets/discord_logo.svg';
  static const String discordWhite = 'assets/discord_logo_white.svg';
  static const String flutterkaigiNavbarDarkLogo =
      'assets/flutterkaigi-navbar_dark_logo.svg';
  static const String flutterkaigiNavbarLightLogo =
      'assets/flutterkaigi-navbar_light_logo.svg';
  static const String flutterkaigiLogo = 'assets/flutterkaigi_logo.svg';
  static const String githubLogo = 'assets/github_logo.svg';
  static const String githubWhite = 'assets/github_logo_white.svg';
  static const String mediumLogo = 'assets/medium_logo.svg';
  static const String mediumWhite = 'assets/medium_logo_white.svg';
  static const $AssetsPhotoGen photo = $AssetsPhotoGen();
  static const $AssetsSponsorGen sponsor = $AssetsSponsorGen();
  static const String twitterLogo = 'assets/twitter_logo.svg';
  static const String twitterWhite = 'assets/twitter_logo_white.svg';
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
