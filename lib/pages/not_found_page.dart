import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website/gen/assets.gen.dart';
import 'package:portfolio_website/main.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width * 0.2,
          child: Lottie.asset(
            Assets.lottie.notFound,
            frameRate: FrameRate(60),
            repeat: false,
          ),
        ),
      ),
    );
  }
}
