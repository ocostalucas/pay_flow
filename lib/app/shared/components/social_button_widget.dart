import 'package:flutter/material.dart';
import 'package:pay_flow/app/core/app_colors.dart';
import 'package:pay_flow/app/core/app_images.dart';
import 'package:pay_flow/app/core/app_typography.dart';

class SocialButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const SocialButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset(
                      AppImages.google,
                    ),
                  ),
                  Container(height: 56, width: 1, color: AppColors.stroke)
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Entrar com Google',
                    style: AppTypography.buttonGray,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
