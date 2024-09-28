import 'package:asroo_store/contstant.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/extensions/context_extention.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/utils/app_regex.dart';
import 'package:asroo_store/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isShowPassword = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //full name
          CustomFadeInRight(
            duration: durationOfAnimation,
            child: CustomTextField(
              controller: fullNameController,
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.translate(LangKeys.validName);
                }
                return null;
              },
              suffixIcon: Icon(
                Icons.text_format,
                color: context.color.textColor,
              ),
            ),
          ),
          SizedBox(height: 25.h),
          //your email
          CustomFadeInRight(
            duration: durationOfAnimation,
            child: CustomTextField(
              controller: emailController,
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid(value!)) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
              suffixIcon: Icon(
                Icons.email,
                color: context.color.textColor,
              ),
            ),
          ),
          SizedBox(height: 25.h),
          // your password
          CustomFadeInRight(
            duration: durationOfAnimation,
            child: CustomTextField(
              controller: passwordController,
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.password);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  isShowPassword = !isShowPassword;
                  setState(() {});
                },
                icon: Icon(
                  isShowPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: context.color.textColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          // login button
          const SignUpButton(),
        ],
      ),
    );
  }
}
