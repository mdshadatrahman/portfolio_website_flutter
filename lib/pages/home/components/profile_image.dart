import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_colors.dart';
class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 400,
          width: 300,
          color: AppColors.primaryLight,
        ),
        Positioned(
          top: 30,
          left: 30,
          child: Container(
            height: 400,
            width: 300,
            color: AppColors.accentColor,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.person,
                size: 300,
                color: AppColors.primaryLight,
              ),
            ),
          ),
        )
      ],
    );
  }
}
