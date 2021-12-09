import 'package:flutter/material.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_controller.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_status.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
// import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  final controller = BarcodeScannerController();

  // ignore: annotate_overrides
  void initState() {
    controller.getAvailableCameras();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return BottomSheetWidget(
    //   title: "Não foi possível identificar um código de barras.",
    //   subTitle: "Tente escanear novamente ou digite o código do seu boleto.",
    //   primaryLabel: "Escanear novamente",
    //   primaryOnPressed: (){},
    //   secondaryLabel: "Digitar código",
    //   secondaryOnPressed: (){},
    // );
    return SafeArea(
      bottom: true,
      top: true,
      right: true,
      left: true,
      child: Stack(
        children: [
          ValueListenableBuilder<BarcodeScannerStatus>(
              valueListenable: controller.statusNotifier,
              builder: (_, status, __) {
                if (status.showCamera) {
                  return Container(
                    child: status.cameraController!.buildPreview(),
                  );
                } else {
                  return Container();
                }
              }),
          RotatedBox(
            quarterTurns: 1,
            child: Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text(
                    'Escaneie o código de barras do boleto',
                    style: TextStyles.buttonBackground,
                  ),
                  centerTitle: true,
                  leading: const BackButton(
                    color: AppColors.background,
                  )),
              body: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.transparent,
                      )),
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
