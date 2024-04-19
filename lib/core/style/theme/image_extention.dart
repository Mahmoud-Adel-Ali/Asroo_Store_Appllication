import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/colors/colors_light.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  MyImages({required this.mainImage});

  final String mainImage;
  @override
  ThemeExtension<MyImages> copyWith({String? mainImage}) {
    return MyImages(mainImage: mainImage ?? this.mainImage);
  }

  @override
  ThemeExtension<MyImages> lerp(
      covariant ThemeExtension<MyImages>? other, double t) {
    if (other is! MyImages) return this;
    return MyImages(mainImage: mainImage);
  }

  ///
  static MyImages dark = MyImages(mainImage: AppImages.testDark);
  static MyImages light = MyImages(mainImage: AppImages.testLight);
}
