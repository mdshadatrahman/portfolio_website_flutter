// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';
import 'package:portfolio_website/pages/home/components/name_widget.dart';
import 'package:portfolio_website/pages/home/components/profile_image.dart';
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NameWidget(
                              firstName: 'MD',
                              middleName: 'SHADAT',
                              lastName: 'RAHMAN',
                            ),
                            SizedBox(height: 50),
                            ProfileImage(),
                          ],
                        ),
                      ),
                      SizedBox(width: width * 0.1),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          VerticalMenuBar(),
                          SizedBox(height: height * 0.1),
                          Column(
                            children: [
                              Text(
                                '#Software engineer at HelloTask Platform Ltd.',
                                style: TextStyle(
                                  color: AppColors.accentColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Bring your ideas\nto life through\nMobile app',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 70,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: SocialButtons(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
