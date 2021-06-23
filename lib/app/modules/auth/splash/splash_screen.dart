import 'package:flutter/material.dart';
import 'package:pay_flow/app/core/app_icons.dart';
import 'package:pay_flow/app/core/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Center(child: Image.asset(AppImages.union)),
          ),
          Center(
            child: AppIcon(
              icon: AppIcons.logoFull,
              size: Size(size.width * .3, size.width * .3),
            ),
          ),
        ],
      ),
    );
  }
}
