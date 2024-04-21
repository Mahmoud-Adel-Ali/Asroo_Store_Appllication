import 'package:asroo_store/core/style/colors/colors_light.dart';
import 'package:asroo_store/core/style/theme/assets_extension.dart';
import 'package:asroo_store/core/style/theme/color_extention.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 128, 163, 227),
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark,],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light,],
    useMaterial3: true,
  );
}
