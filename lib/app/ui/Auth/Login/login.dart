import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maketrip/config/constant/font_constant.dart';

import '../../../../config/constant/color_constant.dart';
import '../../widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isFormSubmitted = false;
  final _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kAppBackGround1Color, kAppBackGround2Color],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.repeated),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -150,
                  top: 30,
                  child: Image.asset(
                    "assets/images/ladyLogo.png",
                    scale: 1.5,
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: Column(
                      children: [
                        const SizedBox(height: 65),
                        const Text(
                          "MakeTrip",
                          style: TextStyle(
                              color: kBorderColor,
                              fontFamily: kFuturaPTBold,
                              fontSize: 28),
                        ),
                        const SizedBox(height: 230),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border:
                                  Border.all(color: kBorderColor, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/Google.png",
                                height: 26,
                                width: 26,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Sign in with Google",
                                style: TextStyle(
                                    color: kBorderColor,
                                    fontFamily: kFuturaPTMedium,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 35),
                        const Text(
                          "Or Sign in with Email",
                          style: TextStyle(
                              color: Color(0xFF696767),
                              fontFamily: kFuturaPTBook,
                              fontSize: 17),
                        ),
                        const SizedBox(height: 35),
                        CustomTextFormField(
                          hintText: 'you@example.com',
                          maxLines: 1,
                          ctrl: emailController,
                          name: "email",
                          prefixIcon: 'assets/icons/email.png',
                          formSubmitted: isFormSubmitted,
                          validationMsg: 'Please enter email',
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 170,
                          height: 50,
                          child: CupertinoButton(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              color: kBorderColor,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Sign in"),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 22,
                                  )
                                ],
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
