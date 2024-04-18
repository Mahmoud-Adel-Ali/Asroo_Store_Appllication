import 'package:asroo_store/core/style/theme/color_extention.dart';
import 'package:asroo_store/core/style/theme/image_extention.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  // colors
  MyImages get image => Theme.of(this).extension<MyImages>()!;
  // navigator
  Future<dynamic> pushName(String routename, {Object? object}) {
    return Navigator.of(this).pushNamed(routename, arguments: object);
  }

  Future<dynamic> pushReplacementNamed(String routename, {Object? object}) {
    return Navigator.of(this)
        .pushReplacementNamed(routename, arguments: object);
  }

  // Future<dynamic> pushAndRemoveUntil(String routename, {Object? object}) {
  //   return Navigator.of(this).pushAndRemoveUntil(routename, (route) => false);
  // }

  void pop() => Navigator.of(this).pop();
}
