import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../../routes/app_pages.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedName = "", selectedTab = "", selectedTab2 = "";

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MakeTrip"),
        actions: [
          IconButton(
            icon: ClipOval(
              child: Material(
                  child: Image.asset(
                "assets/images/blank_profile.png",
                width: 30,
                height: 30,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  "assets/images/blank_profile.png",
                  fit: BoxFit.fill,
                ),
                fit: BoxFit.cover,
              )),
            ),
            onPressed: () {},
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
          controller: _scrollController,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Card(
                    child: SizedBox(
                      height: 150,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 7),
                          const Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Text(
                              "Top Destination itinerary",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  buildCardWidget(
                                      "assets/images/Rectangle8.png",
                                      "London",
                                      false,
                                      Icons.add),
                                  buildCardWidget(
                                      "assets/images/Rectangle9.png",
                                      "Paris",
                                      false,
                                      Icons.add),
                                  buildCardWidget(
                                      "assets/images/Rectangle10.png",
                                      "New York",
                                      false,
                                      Icons.add),
                                  buildCardWidget(
                                      "assets/images/Rectangle11.png",
                                      "Mumbai",
                                      false,
                                      Icons.add),
                                  buildCardWidget(
                                      "assets/images/Rectangle12.png",
                                      "Amsterdam",
                                      false,
                                      Icons.add),
                                  buildCardWidget(
                                      "assets/images/Rectangle13.png",
                                      "Nepal",
                                      false,
                                      Icons.add),
                                  buildCardWidget(
                                      "assets/images/Rectangle13.png",
                                      "23+ More",
                                      true,
                                      Icons.add),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  buildStapWidget("01", "Which city are you excited to explore",
                      "assets/icons/Frame1584.png", true, true),
                  buildStapWidget(
                      "02",
                      "How many days are you planning to stay?",
                      "assets/icons/Frame1586.png",
                      true,
                      false),
                  buildStapWidget(
                      "03",
                      "Would you be comfortable sharing budget for this trip?",
                      "assets/icons/Frame1592.png",
                      true,
                      false),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "STEP",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "04",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 90)
                          ],
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: size.width - 60,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 7),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 10),
                                                SizedBox(
                                                  width: size.width - 100,
                                                  child: const Text(
                                                    "What kind of Traveler are you?",
                                                    style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    buildTabWidget(
                                                        "assets/icons/Frame1584.png",
                                                        "City Explorer"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/image4.png",
                                                        "Nature Lover"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/Group474.png",
                                                        "Party Animal"),
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    buildTabWidget(
                                                        "assets/icons/Group476.png",
                                                        "Relaxation Traveler"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/dinner1.png",
                                                        "Food Lover"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/Group477.png",
                                                        "Cultural Traveler"),
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    buildTabWidget(
                                                        "assets/icons/Group1136.png",
                                                        "Backpacker"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/Group478.png",
                                                        "Experience Seeker"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/Frame1619.png",
                                                        "Luxury Traveler"),
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    buildTabWidget(
                                                        "assets/icons/Group477.png",
                                                        "Active Traveler"),
                                                    const SizedBox(width: 5),
                                                    buildTabWidget(
                                                        "assets/icons/Group481.png",
                                                        "Passionate Photographer"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -15,
                                    left: 20,
                                    child: Image.asset(
                                      "assets/icons/Group4.png",
                                      scale: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration:
                                    const BoxDecoration(color: kBorderColor),
                                width: 1,
                                height: 70,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "STEP",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "05",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 90)
                          ],
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: size.width - 60,
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 7),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: size.width - 100,
                                                      child: const Text(
                                                        "What Transportation option do you prefer to use to explore the city?",
                                                        style: TextStyle(
                                                          color: kPrimaryColor,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Row(
                                                      children: [
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group483.png",
                                                            "Bus"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/image4.png",
                                                            "Car"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group486.png",
                                                            "Bike"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group487.png",
                                                            "Motorcycle"),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Frame1635.png",
                                                            "Walk"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group492.png",
                                                            "Train"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group493.png",
                                                            "Taxi"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group494.png",
                                                            "Underground"),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        buildSecondeTabWidget(
                                                            "assets/icons/g4086.png",
                                                            "Tram"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group497.png",
                                                            "Vanpool"),
                                                        const SizedBox(
                                                            width: 5),
                                                        buildSecondeTabWidget(
                                                            "assets/icons/Group497.png",
                                                            "Ferry"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -15,
                                    left: 20,
                                    child: Image.asset(
                                      "assets/icons/Group1137.png",
                                      scale: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration:
                                    const BoxDecoration(color: kBorderColor),
                                width: 1,
                                height: 70,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 190,
                          child: CupertinoButton(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 16, 20, 16),
                              borderRadius: BorderRadius.circular(30),
                              color: kBorderColor,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    " Generate Trip",
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_rounded)
                                ],
                              ),
                              onPressed: () async {
                                Get.dialog(
                                  barrierDismissible: false,
                                  Dialog(
                                    backgroundColor: kWhiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 80),
                                            SizedBox(
                                              height: 124,
                                              width: 124,
                                              child: Lottie.asset(
                                                'assets/plan.json',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Image.asset(
                                                "assets/icons/Group1143.png", // Group1143
                                                scale: 1.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        const Text(
                                          "Hold Tight",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: kFuturaPTBook),
                                        ),
                                        const SizedBox(height: 5),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Your wait will soon be rewarded with a burst of creativity that’s tailor-made for you.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: ksecondaryColor,
                                                fontFamily: kFuturaPTBook),
                                          ),
                                        ),
                                        const SizedBox(height: 18)
                                      ],
                                    ),
                                  ),
                                );
                                await Future.delayed(
                                    const Duration(seconds: 8));
                                Get.back();
                                Get.toNamed(Routes.travelPlanningPage);
                              }),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Delivered in less than 1 minute",
                          style: TextStyle(
                              color: kBorderColor, fontFamily: kFuturaPTBook),
                        ),
                        const SizedBox(height: 15)
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  buildStapWidget(
      String step, String title, String image, bool textfild, bool nextbutton) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                "STEP",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                ),
              ),
              Text(
                step,
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 90)
            ],
          ),
          const SizedBox(width: 5),
          SizedBox(
            width: size.width - 60,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 7),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width - 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: size.width - 100,
                                          child: Text(
                                            title,
                                            style: const TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: size.width - 100,
                                          height: 30,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: step == "01"
                                                  ? "London"
                                                  : step == "02"
                                                      ? "7 Days"
                                                      : '500\$',
                                              labelText: '',
                                              border:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: kBorderColor,
                                                  width: 0.5,
                                                ),
                                              ),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kBorderColor,
                                                    width: 0.2),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  nextbutton
                                      ? Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: kBorderColor,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              "NEXT",
                                              style:
                                                  TextStyle(color: kWhiteColor),
                                            ),
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -15,
                      left: 20,
                      child: Image.asset(
                        image,
                        scale: 1.5,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(color: kBorderColor),
                  width: 1,
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildTabWidget(String image, String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = name;
        });
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: selectedTab == name
                    ? kBorderColor
                    : const Color(0xFFD2D2D2),
                width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 5),
          child: Row(
            children: [
              Image.asset(
                image,
                scale: 1.5,
              ),
              const SizedBox(width: 3.5),
              Text(
                name,
                style: const TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildSecondeTabWidget(String image, String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab2 = name;
        });
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: selectedTab2 == name
                    ? kBorderColor
                    : const Color(0xFFD2D2D2),
                width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
          child: Row(
            children: [
              Image.asset(
                image,
                scale: 1,
              ),
              const SizedBox(width: 5),
              Text(
                name,
                style: const TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildCardWidget(String image, String name, bool iconcheck, IconData? icon) {
    return GestureDetector(
      onTap: () {
        if (name == "23+ More") {
          Get.toNamed(Routes.topDestinationPage);
        }
        setState(() {
          selectedName = name;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            iconcheck
                ? Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                          color: kBorderColor,
                          width: selectedName == name ? 2.0 : 1),
                    ),
                    child: Icon(
                      icon,
                      color: kBorderColor,
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: selectedName == name
                                ? kBorderColor
                                : kWhiteColor,
                            width: 2.0),
                        borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(image),
                  ),
            const SizedBox(height: 3),
            Text(
              name,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
