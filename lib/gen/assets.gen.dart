/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsCategoriesGen {
  const $AssetsCategoriesGen();

  /// File path: assets/categories/beach.png
  AssetGenImage get beach => const AssetGenImage('assets/categories/beach.png');

  /// File path: assets/categories/desert.png
  AssetGenImage get desert =>
      const AssetGenImage('assets/categories/desert.png');

  /// File path: assets/categories/mountain.png
  AssetGenImage get mountain =>
      const AssetGenImage('assets/categories/mountain.png');

  /// File path: assets/categories/pyramid.png
  AssetGenImage get pyramid =>
      const AssetGenImage('assets/categories/pyramid.png');

  /// File path: assets/categories/temple.png
  AssetGenImage get temple =>
      const AssetGenImage('assets/categories/temple.png');

  /// File path: assets/categories/tower.png
  AssetGenImage get tower => const AssetGenImage('assets/categories/tower.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [beach, desert, mountain, pyramid, temple, tower];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('assets/icons/calendar.png');

  /// File path: assets/icons/cellular_signal.png
  AssetGenImage get cellularSignal =>
      const AssetGenImage('assets/icons/cellular_signal.png');

  /// File path: assets/icons/location_pin.png
  AssetGenImage get locationPin =>
      const AssetGenImage('assets/icons/location_pin.png');

  /// File path: assets/icons/search_icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/search_icon.png');

  /// File path: assets/icons/send_icon.png
  AssetGenImage get sendIcon =>
      const AssetGenImage('assets/icons/send_icon.png');

  /// File path: assets/icons/star_inside_circle.png
  AssetGenImage get starInsideCircle =>
      const AssetGenImage('assets/icons/star_inside_circle.png');

  /// File path: assets/icons/substract_icon.png
  AssetGenImage get substractIcon =>
      const AssetGenImage('assets/icons/substract_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        calendar,
        cellularSignal,
        locationPin,
        searchIcon,
        sendIcon,
        starInsideCircle,
        substractIcon
      ];
}

class $AssetsPopularDestinationsGen {
  const $AssetsPopularDestinationsGen();

  /// File path: assets/popular_destinations/destination_1.png
  AssetGenImage get destination1 =>
      const AssetGenImage('assets/popular_destinations/destination_1.png');

  /// File path: assets/popular_destinations/destination_2.png
  AssetGenImage get destination2 =>
      const AssetGenImage('assets/popular_destinations/destination_2.png');

  /// File path: assets/popular_destinations/destination_3.png
  AssetGenImage get destination3 =>
      const AssetGenImage('assets/popular_destinations/destination_3.png');

  /// List of all assets
  List<AssetGenImage> get values => [destination1, destination2, destination3];
}

class $AssetsSocialGen {
  const $AssetsSocialGen();

  /// File path: assets/social/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/social/facebook.png');

  /// File path: assets/social/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/social/instagram.png');

  /// File path: assets/social/twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/social/twitter.png');

  /// List of all assets
  List<AssetGenImage> get values => [facebook, instagram, twitter];
}

class $AssetsTopDestinationsGen {
  const $AssetsTopDestinationsGen();

  /// File path: assets/top_destinations/top_destination_1.png
  AssetGenImage get topDestination1 =>
      const AssetGenImage('assets/top_destinations/top_destination_1.png');

  /// File path: assets/top_destinations/top_destination_2.png
  AssetGenImage get topDestination2 =>
      const AssetGenImage('assets/top_destinations/top_destination_2.png');

  /// File path: assets/top_destinations/top_destination_3.png
  AssetGenImage get topDestination3 =>
      const AssetGenImage('assets/top_destinations/top_destination_3.png');

  /// File path: assets/top_destinations/top_destination_4.png
  AssetGenImage get topDestination4 =>
      const AssetGenImage('assets/top_destinations/top_destination_4.png');

  /// File path: assets/top_destinations/top_destination_5.png
  AssetGenImage get topDestination5 =>
      const AssetGenImage('assets/top_destinations/top_destination_5.png');

  /// File path: assets/top_destinations/top_destination_6.png
  AssetGenImage get topDestination6 =>
      const AssetGenImage('assets/top_destinations/top_destination_6.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        topDestination1,
        topDestination2,
        topDestination3,
        topDestination4,
        topDestination5,
        topDestination6
      ];
}

class Assets {
  Assets._();

  static const AssetGenImage intersect = AssetGenImage('assets/Intersect.png');
  static const AssetGenImage boy = AssetGenImage('assets/boy.png');
  static const $AssetsCategoriesGen categories = $AssetsCategoriesGen();
  static const AssetGenImage guyTakingSelfie =
      AssetGenImage('assets/guy_taking_selfie.png');
  static const AssetGenImage headerImage =
      AssetGenImage('assets/header_image.png');
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsPopularDestinationsGen popularDestinations =
      $AssetsPopularDestinationsGen();
  static const AssetGenImage saltyLogo = AssetGenImage('assets/salty_logo.png');
  static const $AssetsSocialGen social = $AssetsSocialGen();
  static const $AssetsTopDestinationsGen topDestinations =
      $AssetsTopDestinationsGen();

  /// List of all assets
  List<AssetGenImage> get values =>
      [intersect, boy, guyTakingSelfie, headerImage, saltyLogo];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
