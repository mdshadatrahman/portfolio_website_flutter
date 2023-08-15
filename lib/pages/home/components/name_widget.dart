import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_colors.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.firstName,
    required this.middleName,
    required this.lastName,
  });

  final String firstName;
  final String middleName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstName,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: middleName,
            style: const TextStyle(
              color: AppColors.accentColor,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: lastName,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
