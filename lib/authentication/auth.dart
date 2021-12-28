import 'package:eatmore/source/app_image.dart';
import 'package:eatmore/source/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            top: kToolbarHeight,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AppImage.mainLogo,
                width: Get.width * 0.4,
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
                      Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(17),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 3.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          // border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Color(0xFFFF0000),
                                ),
                                alignment: Alignment.center,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Color(0xFFFF0000),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Email/Password",
                                // prefixIcon: Icon(
                                //   Icons.person,
                                //   color: Colors.grey.withOpacity(0.5),
                                // ),
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.pink,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                // prefixIcon: Icon(
                                //   Icons.vpn_key_rounded,
                                //   color: Colors.grey.withOpacity(0.5),
                                // ),
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.pink,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Sizer.spacerHeight(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Log In"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.red),
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
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
                      Text("OR"),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppImage.facebook, width: 30,),
                            Image.asset(AppImage.google, width: 30,),
                            Image.asset(AppImage.twitter, width: 30,),
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
