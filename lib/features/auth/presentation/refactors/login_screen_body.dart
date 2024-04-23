import 'package:asroo_store/contstant.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:asroo_store/features/auth/presentation/widgets/dark_and_language.dart';
import 'package:asroo_store/features/auth/presentation/widgets/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // dark mode and language
            const DarkAndLanguage(),
            const SizedBox(height: 50),
            //wellcome info
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(height: 30.h),
            // login form
            const LoginForm(),
            SizedBox(height: 30.h),
            CustomFadeInUp(
              duration: durationOfAnimation + 400,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
