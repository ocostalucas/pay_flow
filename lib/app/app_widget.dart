import 'package:flutter/material.dart';
import 'package:pay_flow/app/modules/auth/splash/splash_screen.dart';
import 'package:pay_flow/app/shared/models/user_model.dart';

import 'modules/auth/login/login_screen.dart';
import 'modules/barcode_scanner/barcode_scanner_screen.dart';
import 'modules/boletos/insert_boleto/insert_boleto_screen.dart';
import 'modules/home/home_screen.dart';
import 'shared/core/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashScreen(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/barcode_scanner": (context) => BarcodeScannerScreen(),
        "/insert_boleto": (context) => InsertBoletoScreen(
              barcode: ModalRoute.of(context) != null
                  ? ModalRoute.of(context)!.settings.arguments.toString()
                  : null,
            )
      },
    );
  }
}
