import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/gen/assets.gen.dart';
import 'package:portfolio_website/utils/app_colors.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 300,
          width: 80,
          color: AppColors.primaryLight,
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.svg.linkedin, height: 20),
              const SizedBox(height: 30),
              SvgPicture.asset(Assets.svg.facebook, height: 20),
              const SizedBox(height: 30),
              SvgPicture.asset(Assets.svg.insta, height: 20),
              const SizedBox(height: 30),
              SvgPicture.asset(Assets.svg.mail, height: 20),
            ],
          ),
        ),
        Positioned(
          bottom: -90,
          left: 25,
          right: 25,
          child: RotatedBox(
            quarterTurns: 1,
            child: Container(
              color: AppColors.accentColor,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Center(
                child: Text(
                  'Follow Me',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryLight,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
