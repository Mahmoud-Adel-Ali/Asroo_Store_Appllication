import 'package:asroo_store/core/common/screens/under_build_screen.dart';
import 'package:asroo_store/features/auth/presentation/screens/login_screen.dart';
import 'package:asroo_store/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signup';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case signUp:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const UnderBuildScreen(),
        );
    }
  }
}
