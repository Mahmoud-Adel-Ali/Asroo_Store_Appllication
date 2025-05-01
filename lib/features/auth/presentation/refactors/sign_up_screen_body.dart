import 'package:asroo_store/contstant.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/rroutes/app_routes.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:asroo_store/features/auth/presentation/widgets/dark_and_language.dart';
import 'package:asroo_store/features/auth/presentation/widgets/sign_up/sign_up_form.dart';
import 'package:asroo_store/features/auth/presentation/widgets/sign_up/user_avatare_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLanguage(),
            SizedBox(height: 10.h),
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            SizedBox(height: 20.h),
            const UserAvatareImage(),
            SizedBox(height: 20.h),
            // sign up form
            const SignUpForm(),
            SizedBox(height: 20.h),
            CustomFadeInUp(
              duration: durationOfAnimation + 
              400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
