import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
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
