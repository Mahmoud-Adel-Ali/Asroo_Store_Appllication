import 'package:asroo_store/core/common/screens/under_build_screen.dart';
import 'package:asroo_store/test1_screeen.dart';
import 'package:asroo_store/test2_screeen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String test1Screen = 'test1';
  static const String test2Screen = 'test2';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case test1Screen:
        return MaterialPageRoute(builder: (context) => const TestOneScreen());
      case test2Screen:
        return MaterialPageRoute(builder: (context) => const TestTwoScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const PageUnderBuildScreen(),
        );
    }
  }
}
