import 'package:flutter/material.dart';
import 'package:pay_flow/app/core/app_colors.dart';

import 'modules/auth/login/login_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
      ),
      home: LoginScreen(),
    );
  }
}
