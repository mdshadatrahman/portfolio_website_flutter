import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';
import 'package:portfolio_website/pages/home/components/name_widget.dart';
import 'package:portfolio_website/shared/social_buttons.dart';
import 'package:portfolio_website/shared/vertical_menu_bar.dart';
import 'package:portfolio_website/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.9,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: NameWidget(
                        firstName: 'MD',
                        middleName: 'SHADAT',
                        lastName: 'RAHMAN',
                      ),
                    ),
                    SizedBox(width: width * 0.1),
                    const VerticalMenuBar(),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SocialButtons(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
