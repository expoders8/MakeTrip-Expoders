import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:maketrip/config/constant/font_constant.dart';

import '../../../config/animation/translate_right_animation.dart';
import '../../../config/animation/translate_up_animation.dart';
import '../../../config/constant/color_constant.dart';
import '../../routes/app_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedName = "";
  bool accordionNumber1 = false;
  bool accordionNumber2 = false;
  bool accordionNumber3 = false;
  bool accordionNumber4 = false;
  bool accordionNumber5 = false;
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
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  accordionNumber1 ? Container() : const SizedBox(height: 90),
                  accordionNumber1
                      ? Container()
                      : Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                              accordionNumber1
                                  ? Container()
                                  : Row(
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
                                      ],
                                    ),
                              accordionNumber1
                                  ? Container()
                                  : Row(
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
                                      ],
                                    ),
                              accordionNumber1
                                  ? Container()
                                  : Row(
                                      children: [
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
                                            "assets/images/Rectangle10.png",
                                            "New York",
                                            false,
                                            Icons.add),
                                        buildCardWidget(
                                            "assets/images/Rectangle11.png",
                                            "Mumbai",
                                            false,
                                            Icons.add),
                                      ],
                                    ),
                              accordionNumber1
                                  ? Container()
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        buildCardWidget(
                                            "assets/images/Rectangle13.png",
                                            "23+ More",
                                            true,
                                            Icons.add)
                                      ],
                                    ),
                            ],
                          ),
                        ),
                  accordionNumber1
                      ? TranslateRightAnimation(
                          child: Card(
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                        )
                      : Container(),
                  const SizedBox(height: 25),
                  accordionNumber1
                      ? TranslateUpAnimation(
                          child: Padding(
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
                                      "01",
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 7),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              child: const Text(
                                                                "Which city are you excited to explore",
                                                                style:
                                                                    TextStyle(
                                                                  color:
                                                                      kPrimaryColor,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10),
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              height: 30,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                  hintText:
                                                                      'London',
                                                                  labelText: '',
                                                                  border:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color:
                                                                          kBorderColor,
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color:
                                                                            kBorderColor,
                                                                        width:
                                                                            0.2),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
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
                                              "assets/icons/Frame1584.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      accordionNumber2
                                          ? Container()
                                          : buildnextButton(2),
                                      accordionNumber2
                                          ? Container(
                                              decoration: const BoxDecoration(
                                                  color: kBorderColor),
                                              width: 1,
                                              height: 70,
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  accordionNumber2
                      ? TranslateUpAnimation(
                          child: Padding(
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
                                      "02",
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 7),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              child: const Text(
                                                                "How many days are you planning to stay?",
                                                                style:
                                                                    TextStyle(
                                                                  color:
                                                                      kPrimaryColor,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10),
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              height: 30,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                  hintText:
                                                                      '7 Days',
                                                                  labelText: '',
                                                                  border:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color:
                                                                          kBorderColor,
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color:
                                                                            kBorderColor,
                                                                        width:
                                                                            0.2),
                                                                  ),
                                                                ),
                                                                onSaved: (String?
                                                                    value) {},
                                                              ),
                                                            )
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
                                              "assets/icons/Frame1586.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      accordionNumber3
                                          ? Container()
                                          : buildnextButton(3),
                                      accordionNumber3
                                          ? Container(
                                              decoration: const BoxDecoration(
                                                  color: kBorderColor),
                                              width: 1,
                                              height: 70,
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  accordionNumber3
                      ? TranslateUpAnimation(
                          child: Padding(
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
                                      "03",
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 7),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              child: const Text(
                                                                "Would you be comfortable sharing budget for this trip?",
                                                                style:
                                                                    TextStyle(
                                                                  color:
                                                                      kPrimaryColor,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10),
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              height: 30,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                  hintText:
                                                                      '500\$',
                                                                  labelText: '',
                                                                  border:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color:
                                                                          kBorderColor,
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color:
                                                                            kBorderColor,
                                                                        width:
                                                                            0.2),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
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
                                              "assets/icons/Frame1592.png",
                                              scale: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      accordionNumber4
                                          ? Container()
                                          : buildnextButton(4),
                                      accordionNumber4
                                          ? Container(
                                              decoration: const BoxDecoration(
                                                  color: kBorderColor),
                                              width: 1,
                                              height: 70,
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  accordionNumber4
                      ? TranslateUpAnimation(
                          child: Padding(
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 7),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                            height: 10),
                                                        SizedBox(
                                                          width:
                                                              size.width - 100,
                                                          child: const Text(
                                                            "What kind of Traveler are you?",
                                                            style: TextStyle(
                                                              color:
                                                                  kPrimaryColor,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
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
                                      accordionNumber5
                                          ? Container()
                                          : buildnextButton(5),
                                      accordionNumber5
                                          ? Container(
                                              decoration: const BoxDecoration(
                                                  color: kBorderColor),
                                              width: 1,
                                              height: 70,
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  accordionNumber5
                      ? TranslateUpAnimation(
                          child: Padding(
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 7),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width:
                                                                  size.width -
                                                                      100,
                                                              child: const Text(
                                                                "What Transportation option do you prefer to use to explore the city?",
                                                                style:
                                                                    TextStyle(
                                                                  color:
                                                                      kPrimaryColor,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
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
                                      accordionNumber5
                                          ? buildnextButton(6)
                                          : Container(),
                                      const SizedBox(height: 25)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  accordionNumber5
                      ? Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 190,
                                child: CupertinoButton(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 16, 20, 16),
                                    borderRadius: BorderRadius.circular(30),
                                    color: kBorderColor,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      // Get.dialog(
                                      //   barrierDismissible: false,
                                      //   Dialog(
                                      //     backgroundColor: kWhiteColor,
                                      //     shape: RoundedRectangleBorder(
                                      //       borderRadius:
                                      //           BorderRadius.circular(10.0),
                                      //     ),
                                      //     child: Column(
                                      //       mainAxisSize: MainAxisSize.min,
                                      //       children: [
                                      //         const SizedBox(height: 25),
                                      //         Row(
                                      //           mainAxisAlignment:
                                      //               MainAxisAlignment.center,
                                      //           crossAxisAlignment:
                                      //               CrossAxisAlignment.start,
                                      //           children: [
                                      //             const SizedBox(width: 80),
                                      //             SizedBox(
                                      //               height: 124,
                                      //               width: 124,
                                      //               child: Lottie.asset(
                                      //                 'assets/plan.json',
                                      //                 width: 120,
                                      //                 height: 120,
                                      //                 fit: BoxFit.fill,
                                      //               ),
                                      //             ),
                                      //             GestureDetector(
                                      //               onTap: () {
                                      //                 Get.back();
                                      //               },
                                      //               child: Image.asset(
                                      //                 "assets/icons/Group1143.png", // Group1143
                                      //                 scale: 1.5,
                                      //               ),
                                      //             ),
                                      //           ],
                                      //         ),
                                      //         const SizedBox(height: 20),
                                      //         const Text(
                                      //           "Hold Tight",
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold,
                                      //               fontSize: 18,
                                      //               fontFamily: kFuturaPTBook),
                                      //         ),
                                      //         const SizedBox(height: 5),
                                      //         const Padding(
                                      //           padding: EdgeInsets.all(8.0),
                                      //           child: Text(
                                      //             "Your wait will soon be rewarded with a burst of creativity that’s tailor-made for you.",
                                      //             textAlign: TextAlign.center,
                                      //             style: TextStyle(
                                      //                 color: ksecondaryColor,
                                      //                 fontFamily:
                                      //                     kFuturaPTBook),
                                      //           ),
                                      //         ),
                                      //         const SizedBox(height: 18)
                                      //       ],
                                      //     ),
                                      //   ),
                                      // );
                                      // await Future.delayed(
                                      //     const Duration(seconds: 8));
                                      // Get.back();
                                      Get.toNamed(Routes.travelPlanningPage);
                                    }),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Delivered in less than 1 minute",
                                style: TextStyle(
                                    color: kBorderColor,
                                    fontFamily: kFuturaPTBook),
                              ),
                              const SizedBox(height: 15)
                            ],
                          ),
                        )
                      : Container()
                ],
              )),
        ),
      ),
    );
  }

  buildnextButton(int number) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // GestureDetector(
          //   onTap: () {
          //     if (number == 2) {
          //       setState(() {
          //         accordionNumber1 = false;
          //       });
          //     } else if (number == 3) {
          //       setState(() {
          //         accordionNumber2 = false;
          //       });
          //     } else if (number == 4) {
          //       setState(() {
          //         accordionNumber3 = false;
          //       });
          //     } else if (number == 5) {
          //       setState(() {
          //         accordionNumber4 = false;
          //       });
          //     } else if (number == 6) {
          //       setState(() {
          //         accordionNumber5 = false;
          //       });
          //     }
          //   },
          //   child: Container(
          //     width: 90,
          //     height: 30,
          //     decoration: BoxDecoration(
          //         color: kBorderColor, borderRadius: BorderRadius.circular(25)),
          //     child: const Row(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(Icons.keyboard_double_arrow_left_sharp,
          //             color: kWhiteColor),
          //         Padding(
          //           padding: EdgeInsets.only(bottom: 2.0),
          //           child: Text(
          //             "Previous ",
          //             style: TextStyle(color: kWhiteColor),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          accordionNumber5
              ? Container()
              : GestureDetector(
                  onTap: () {
                    if (number == 2) {
                      setState(() {
                        accordionNumber2 = true;
                      });
                    } else if (number == 3) {
                      setState(() {
                        accordionNumber3 = true;
                      });
                    } else if (number == 4) {
                      setState(() {
                        accordionNumber4 = true;
                      });
                    } else if (number == 5) {
                      setState(() {
                        accordionNumber5 = true;
                      });
                    }
                  },
                  child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        color: kBorderColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.0),
                            child: Text(
                              " Next",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: kWhiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  buildCardWidget(String image, String name, bool iconcheck, IconData? icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedName = name;
          accordionNumber1 = true;
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
