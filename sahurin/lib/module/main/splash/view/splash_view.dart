import 'package:flutter/material.dart';
import '../../../../shared/utils/theme.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: greenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: -50,
                    right: 10,
                    child: Image.asset(
                      "assets/lamp/group_lamp.png",
                      height: 340,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sahurin",
                          style: goldTextstyle.copyWith(
                            fontSize: 64.0,
                            fontFamily: "RamadhanAmazing",
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "bantu jaga sahurmu!",
                          style: whiteTextStyle.copyWith(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    left: -100,
                    child: Image.asset(
                      "assets/ornamen.png",
                      height: 272.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
