import 'package:eatmore/main_menu/dashboard.dart';
import 'package:eatmore/source/app_image.dart';
import 'package:eatmore/source/sizer.dart';
import 'package:eatmore/source/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            color: Colors.white,
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              AppImage.upperImage,
              fit: BoxFit.cover,
              width: Get.width,
              height: Get.height * 0.35,
            ),
          ),
          Positioned.fill(
            top: kToolbarHeight / 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AppImage.mainLogo,
                width: Get.width * 0.4,
              ),
            ),
          ),
          Positioned.fill(
            right: 15,
            top: 15,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Text(
                  "Skip",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: SizedBox(
                  height: Get.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Make.line(
                            color: Colors.grey,
                            width: 50,
                            height: 1,
                            margin: 8,
                          ),
                          Text(
                            'Login or sign in',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          ),
                          Make.line(
                            color: Colors.grey,
                            width: 50,
                            height: 1,
                            margin: 8,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Make.formUnderLine(
                              hintText: "Phone Number",
                              eBorderSideColor: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          Sizer.spacerHeight(),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Dashboard(),
                                ),
                              );
                            },
                            child: Text("Continue"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "or",
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Make.imageRoundBorder(
                              AppImage.facebook,
                            ),
                            Make.imageRoundBorder(
                              AppImage.google,
                            ),
                            Make.imageRoundBorder(
                              AppImage.twitter,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AppImage.cornerImage,
              width: Get.width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
