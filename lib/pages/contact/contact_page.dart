import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/app_colors.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Contact', style: TextStyle(fontSize: 48, color: AppColors.whiteColor)),
      ),
    );
  }
}
