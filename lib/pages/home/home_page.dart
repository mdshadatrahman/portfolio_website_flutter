import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';
import 'package:portfolio_website/pages/home/components/name_widget.dart';
import 'package:portfolio_website/pages/home/home_provider.dart';
import 'package:portfolio_website/utils/app_colors.dart';
import 'package:provider/provider.dart';

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
            width: workWidth,
            child: Column(
              children: [
                Row(
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
                    const SizedBox(width: 50),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Provider.of<HomeProvider>(context).pageNames.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Provider.of<HomeProvider>(context, listen: false).changeCurrentPageIndex(i);
                              },
                              child: Consumer<HomeProvider>(
                                builder: (context, provider, child) {
                                  return Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                                    color: provider.currentPageIndex == i ? AppColors.accentColor : Colors.transparent,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        provider.pageNames[i],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: provider.currentPageIndex == i ? AppColors.blackColor : AppColors.whiteColor,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Spacer(),
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
