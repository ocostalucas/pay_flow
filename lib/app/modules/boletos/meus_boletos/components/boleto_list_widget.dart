import 'package:flutter/material.dart';
import 'package:pay_flow/app/shared/components/boleto_tile_widget.dart';
import 'package:pay_flow/app/shared/models/boleto_model.dart';

import '../meus_boletos_controller.dart';

class BoletoListWidget extends StatefulWidget {
  final MeusBoletosController controller;
  BoletoListWidget({Key? key, required this.controller}) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BoletoModel>>(
      valueListenable: widget.controller.boletosNotifier,
      builder: (_, boletos, __) => Column(
        children: boletos.map((e) => BoletoTileWidget(data: e)).toList(),
      ),
    );
  }
}
