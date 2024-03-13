import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maketrip/config/constant/color_constant.dart';
import 'package:maketrip/config/constant/font_constant.dart';

import '../../routes/app_pages.dart';

class UpgradeToProPage extends StatefulWidget {
  const UpgradeToProPage({super.key});

  @override
  State<UpgradeToProPage> createState() => _UpgradeToProPageState();
}

class _UpgradeToProPageState extends State<UpgradeToProPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/icons/close.png",
              width: 26,
              height: 26,
            ),
            onPressed: () {
              Get.back();
              Get.toNamed(Routes.travelPlanningPage);
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [kAppBackGround1Color, kAppBackGround2Color],
            ),
          ),
        ),
      ),
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
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
            child: Column(
              children: [
                const Text(
                    "One-time payment. No subscription. Lifetime access"),
                const Text(
                  "Unlock the full potential \nfor your trips",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: kFuturaPTBold,
                      fontSize: 25),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: Get.width,
                  child: Card(
                    color: kPrimaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Upgrade with \nCoupon code",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kBackGroundColor,
                                fontFamily: kFuturaPTBold,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: size.width - 100,
                            height: 60,
                            child: TextFormField(
                              style: const TextStyle(color: kWhiteColor),
                              autofocus: true,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(5, 5, 5, 20),
                                // hintText: 'E',
                                // hintStyle: const TextStyle(color: kWhiteColor),
                                labelText: 'Enter code',
                                labelStyle: const TextStyle(color: kWhiteColor),
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF3B3A3A),
                                    width: 1,
                                  ),
                                ),
                                suffixIcon: Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  width: 60,
                                  height: 32,
                                  child: CupertinoButton(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                    color: const Color(0xFFFF6641),
                                    child: const Text(
                                      "Check",
                                      style: TextStyle(
                                          color: kWhiteColor, fontSize: 15),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF3B3A3A),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            width: Get.width,
                            child: CupertinoButton(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                color: const Color(0xFF343434),
                                child: const Text("Apply Coupon Code"),
                                onPressed: () {}),
                          ),
                          const SizedBox(height: 18),
                          buildUpgradetoProText(
                              "Unlimited Itinerary Generation", true),
                          buildUpgradetoProText("Faster responses", true),
                          buildUpgradetoProText(
                              "Local tips and transportation \nsuggestions",
                              true),
                          buildUpgradetoProText(
                              "24/7 email support during the trip", true),
                          buildUpgradetoProText(
                              "Save as PDF, spreadsheet", true),
                          buildUpgradetoProText("Get Direction", true),
                          const SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  color: kWhiteColor,
                  elevation: 6,
                  shadowColor: const Color.fromARGB(50, 0, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        const Text(
                          "Upgrade to Pro",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          children: [
                            Text(
                              "14.9",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "/Lifestyle",
                              style: TextStyle(
                                  color: Color(0xFFACA8A8), fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Build \$178.8/Year",
                              style: TextStyle(
                                color: ksecondaryColor,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFF894A7),
                                      Color(0xFF9DD9F6),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    tileMode: TileMode.repeated),
                              ),
                              child: const Center(child: Text("25% Save")),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            // bottomSheetForUpgradeToPro();
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: kPrimaryColor, width: 1)),
                            child: const Center(
                              child: Text(
                                "Get access forever!",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        buildUpgradetoProText(
                            "Unlimited Itinerary Generation", false),
                        buildUpgradetoProText("Faster responses", false),
                        buildUpgradetoProText(
                            "Local tips and transportation \nsuggestions",
                            false),
                        buildUpgradetoProText(
                            "24/7 email support during the trip", false),
                        buildUpgradetoProText(
                            "Save as PDF, spreadsheet", false),
                        buildUpgradetoProText("Get Direction", false),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildUpgradetoProText(String text, bool checkFild) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(
                    color: checkFild ? kWhiteColor : kPrimaryColor, width: 0.5),
                borderRadius: BorderRadius.circular(25)),
            child: Icon(
              Icons.check,
              size: 16,
              color: checkFild ? kWhiteColor : kPrimaryColor,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(color: ksecondaryColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
