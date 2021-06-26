import 'package:flutter/material.dart';
import 'package:pay_flow/app/modules/boletos/meus_boletos/components/boleto_list_widget.dart';
import 'package:pay_flow/app/modules/boletos/meus_boletos/meus_boletos_controller.dart';
import 'package:pay_flow/app/shared/core/app_colors.dart';
import 'package:pay_flow/app/shared/core/app_typography.dart';

class ExtractScreen extends StatefulWidget {
  const ExtractScreen({Key? key}) : super(key: key);

  @override
  _ExtractScreenState createState() => _ExtractScreenState();
}

class _ExtractScreenState extends State<ExtractScreen> {
  final controller = MeusBoletosController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Meus extratos",
                  style: AppTypography.titleBoldHeading,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BoletoListWidget(
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
