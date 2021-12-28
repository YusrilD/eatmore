import 'package:eatmore/authentication/auth.dart';
import 'package:eatmore/source/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    redirectScreen();
    super.initState();
  }

  Future<void> redirectScreen() async {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AuthenticationScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImage.background,
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppImage.mainLogo,
                width: Get.width * 0.6,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AppImage.cornerImage,
              width: Get.width * 0.65,
            ),
          ),
        ],
      ),
    );
  }
}
