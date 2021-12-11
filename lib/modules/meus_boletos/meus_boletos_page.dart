import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class MeusBoletosPage extends StatefulWidget {
  const MeusBoletosPage({Key? key}) : super(key: key);

  @override
  _MeusBoletosPageState createState() => _MeusBoletosPageState();
}

class _MeusBoletosPageState extends State<MeusBoletosPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            "Meu Boletos",
            style: TextStyles.titleBoldHeading,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Divider(thickness: 1, height: 1, color: AppColors.stroke,),
        )
      ],
    );
  }
}
