import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:asroo_store/features/auth/presentation/refactors/sign_up_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomPaint(
          size: Size(MediaQuery.of(context).size.width, 150.h),
          painter: AuthCustomPainter(
            gradient: LinearGradient(
              colors: [
                context.color.bluePinkLight!,
                context.color.bluePinkLight!,
                context.color.bluePinkLight!,
                context.color.bluePinkDark!,
              ],
            ),
          ),
        ),
        body: const SignUpScreenBody(),
      ),
    );
  }
}
