import 'package:asroo_store/contstant.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class UserAvatareImage extends StatelessWidget {
  const UserAvatareImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomFadeInDown(
      duration: durationOfAnimation + 100,
      child: CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage(AppImages.userAvatar),
      ),
    );
  }
}
