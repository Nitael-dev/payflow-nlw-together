
import 'package:flutter/material.dart';
import 'package:payflow/modules/shared/login/login_page.dart';
import 'package:payflow/modules/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const LoginPage(),
    );
  }
}