import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class SocialLoginPage extends StatefulWidget {
  const SocialLoginPage({super.key});

  @override
  State<SocialLoginPage> createState() => _SocialLoginPageState();
}

class _SocialLoginPageState extends State<SocialLoginPage> {
  String idToken = "", fcmToken = "";
  GoogleSignInAccount? user;
  // final FirebaseAuth auth = FirebaseAuth.instance;
  // FCMNotificationServices fCMNotificationServices = FCMNotificationServices();

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) {});
    _googleSignIn.signInSilently();
    // fCMNotificationServices.getDeviceToken().then((value) => fcmToken = value);
  }

  Future<void> handleGoogleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        // LoaderX.show(context, 70.0);
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        setState(() {
          idToken = googleSignInAuthentication.idToken.toString();
        });
        // final AuthCredential authCredential = GoogleAuthProvider.credential(
        //     idToken: googleSignInAuthentication.idToken,
        //     accessToken: googleSignInAuthentication.accessToken);

        // UserCredential result = await auth.signInWithCredential(authCredential);
        // User? user = result.user;
        // var userName = user?.displayName;
        // List<String> substrings = userName.toString().split(' ');
        // await authService
        //     .socialLogin(substrings[0], substrings[1], user?.email,
        //         user?.photoURL, idToken, "Google", fcmToken)
        //     .then(
        //   (value) async {
        //     if (value.success == true) {
        //       LoaderX.hide();
        //       Get.offAll(() => const TabPage());
        //     } else {
        //       LoaderX.hide();
        //       SnackbarUtils.showErrorSnackbar(
        //           "Failed to Login", value.message.toString());
        //     }
        //     return null;
        //   },
        // );
      }
    } catch (error) {
      // LoaderX.hide();
      // SnackbarUtils.showErrorSnackbar("Failed to Login", error.toString());
      throw error.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: Platform.isIOS
          ? MainAxisAlignment.spaceEvenly
          : MainAxisAlignment.center,
      children: [
        Center(
          child: GestureDetector(
            onTap: handleGoogleSignIn,
            child: Container(
              width: Get.width - 60,
              padding: const EdgeInsets.symmetric(vertical: 9),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: kPrimaryColor, width: 1)),
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
                        color: kPrimaryColor,
                        fontFamily: kFuturaPTMedium,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
