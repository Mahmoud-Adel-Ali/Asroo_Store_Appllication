import 'package:asroo_store/contstant.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: durationOfAnimation,
      child: Column(
        children: [
          // Title
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeightHelper.bold,
              color: context.color.textColor,
            ),
          ),
          SizedBox(height: 10.h),
          // Descrption
          TextApp(
            text: description,
            theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.medium,
              color: context.color.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
