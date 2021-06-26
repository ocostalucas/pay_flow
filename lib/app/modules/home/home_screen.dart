import 'package:flutter/material.dart';
import 'package:pay_flow/app/modules/boletos/extract/extract_screen.dart';
import 'package:pay_flow/app/modules/boletos/meus_boletos/meus_boletos_screen.dart';
import 'package:pay_flow/app/shared/core/app_colors.dart';
import 'package:pay_flow/app/shared/core/app_typography.dart';
import 'package:pay_flow/app/shared/models/user_model.dart';

import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  final UserModel user;
  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: AppTypography.titleRegular,
                    children: [
                      TextSpan(
                          text: "${widget.user.name}",
                          style: AppTypography.titleBoldBackground)
                    ]),
              ),
              subtitle: Text(
                "Mantenha suas contas em dia",
                style: AppTypography.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(widget.user.photoURL!))),
              ),
            ),
          ),
        ),
      ),
      body: [
        MeusBoletosScreen(
          key: UniqueKey(),
        ),
        ExtractScreen(
          key: UniqueKey(),
        )
      ][controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  controller.setPage(0);
                  setState(() {});
                },
                icon: Icon(
                  Icons.home,
                  color: controller.currentPage == 0
                      ? AppColors.primary
                      : AppColors.body,
                )),
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, "/barcode_scanner");
                setState(() {});
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  controller.setPage(1);
                  setState(() {});
                },
                icon: Icon(
                  Icons.description_outlined,
                  color: controller.currentPage == 1
                      ? AppColors.primary
                      : AppColors.body,
                ))
          ],
        ),
      ),
    );
  }
}
