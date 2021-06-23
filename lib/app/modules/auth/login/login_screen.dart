import 'package:flutter/material.dart';
import 'package:pay_flow/app/core/app_colors.dart';
import 'package:pay_flow/app/core/app_icons.dart';
import 'package:pay_flow/app/core/app_images.dart';
import 'package:pay_flow/app/core/app_typography.dart';
import 'package:pay_flow/app/shared/components/social_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0, 0.69),
                  colors: [
                    Color(0xffFFC480),
                    AppColors.primary,
                  ],
                ),
              ),
              width: size.width,
              height: size.height * .375,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 40,
              child: Image.asset(AppImages.person,
                  width: size.width * .8, height: size.height * .5),
            ),
            Positioned(
              bottom: size.height * .08,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIcon(
                    icon: AppIcons.logoMini,
                    size: Size(45, 45),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 30),
                    child: Text(
                      'Organize seus boletos em um só lugar',
                      textAlign: TextAlign.center,
                      style: AppTypography.titleHome,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: SocialButtonWidget(onTap: () {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
