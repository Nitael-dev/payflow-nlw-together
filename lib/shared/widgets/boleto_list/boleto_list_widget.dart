import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidget extends StatefulWidget {
  const BoletoListWidget({ Key? key }) : super(key: key);

  @override
  State<BoletoListWidget> createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.boletosNotifier,
      builder: (_, boletos, __) => Column(
        children: controller.boletos.map((e) => BoletoTileWidget(data: e)).toList()
      ),
    );
  }
}