import 'package:flutter/material.dart';
import 'package:pay_flow/app/shared/core/app_colors.dart';
import 'package:pay_flow/app/shared/core/app_icons.dart';
import 'package:pay_flow/app/shared/core/app_typography.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;
  const BoletoInfoWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppIcon(
              icon: AppIcons.logoMini,
              size: Size(56, 34),
            ),
            Container(
              width: 1,
              height: 32,
              color: AppColors.background,
            ),
            Text.rich(TextSpan(
              text: "Você tem ",
              style: AppTypography.captionBackground,
              children: [
                TextSpan(
                  text: "$size boletos\n",
                  style: AppTypography.captionBoldBackground,
                ),
                TextSpan(
                  text: "cadastrados para pagar",
                  style: AppTypography.captionBackground,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
