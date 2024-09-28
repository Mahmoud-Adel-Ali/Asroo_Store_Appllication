import 'package:asroo_store/contstant.dart';
import 'package:asroo_store/core/app/app_cubit/app_cubit.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLanguage extends StatelessWidget {
  const DarkAndLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: durationOfAnimation,
              child: CustomLinearButton(
                onPressed: cubit.changeAppThemeMode,
                child: Icon(
                  cubit.isDark
                      ? Icons.light_mode_rounded
                      : Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInLeft(
              duration: durationOfAnimation,
              child: CustomLinearButton(
                onPressed: () {
                  cubit.currentLanguageCode == 'en'
                      ? cubit.toArabic()
                      : cubit.toEnglish();
                },
                width: 100.w,
                height: 44.h,
                child: TextApp(
                  text: context.translate(LangKeys.language),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
