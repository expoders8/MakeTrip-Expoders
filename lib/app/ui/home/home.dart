import 'dart:io';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../routes/app_pages.dart';
import '../../models/city_list_model.dart';
import '../../services/genret_trip_service.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedName = "", selectedTab = "", selectedTab2 = "";
  final TextEditingController explorecController = TextEditingController();
  final TextEditingController daysController = TextEditingController();
  final TextEditingController budgetController = TextEditingController();
  bool isFormSubmitted = false;
  TripService tripService = TripService();
  final _tripFormKey = GlobalKey<FormState>();
  bool multipalDestination = false,
      activeStep1 = true,
      activeStep2 = false,
      activeStep3 = false;

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

  List<CityModel> cityModel = [
    CityModel(
      image: "assets/images/Rectangle8.png",
      cityName: "London",
    ),
    CityModel(
      image: "assets/images/Rectangle9.png",
      cityName: "Paris",
    ),
    CityModel(
      image: "assets/images/Rectangle10.png",
      cityName: "New York",
    ),
    CityModel(
      image: "assets/images/Rectangle11.png",
      cityName: "Mumbai",
    ),
    CityModel(
      image: "assets/images/Rectangle12.png",
      cityName: "Amsterdam",
    ),
    CityModel(
      image: "assets/images/Rectangle13.png",
      cityName: "Nepal",
    ),
    CityModel(
      image: "assets/icons/Plus.png",
      cityName: "23+ More",
    ),
  ];
  List<CityModel> citymultipalModel = [
    CityModel(
      image: "assets/images/Rectangle8.png",
      cityName: "London",
    ),
    CityModel(
      image: "assets/images/Rectangle9.png",
      cityName: "Paris",
    ),
    CityModel(
      image: "assets/images/Rectangle10.png",
      cityName: "New York",
    ),
    CityModel(
      image: "assets/images/Rectangle11.png",
      cityName: "Mumbai",
    ),
    CityModel(
      image: "assets/images/Rectangle12.png",
      cityName: "Amsterdam",
    ),
    CityModel(
      image: "assets/images/Rectangle13.png",
      cityName: "Nepal",
    ),
    CityModel(
      image: "assets/images/Rectangle8.png",
      cityName: "America",
    ),
    CityModel(
      image: "assets/images/Rectangle10.png",
      cityName: "Caneda",
    ),
    CityModel(
      image: "assets/images/Rectangle9.png",
      cityName: "NewZealand",
    ),
    CityModel(
      image: "assets/images/Rectangle13.png",
      cityName: "Bangladesh",
    ),
    CityModel(
      image: "assets/images/Rectangle8.png",
      cityName: "Afghanistan",
    ),
    CityModel(
      image: "assets/images/Rectangle10.png",
      cityName: "Albania",
    ),
  ];

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
            onPressed: () {
              // Get.toNamed(Routes.loginPage);
              Get.toNamed(Routes.eventsPage);
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
          child: Form(
            key: _tripFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    multipalDestination
                        ? Card(
                            child: SizedBox(
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
                                  SizedBox(
                                    height: 315,
                                    width: Get.width,
                                    child: AnimationLimiter(
                                      child: GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount:
                                              size.width > 500 ? 5 : 4,
                                          mainAxisExtent: size.width > 500
                                              ? 365
                                              : Platform.isIOS
                                                  ? 230
                                                  : 105,
                                        ),
                                        padding: const EdgeInsets.only(
                                            right: 5, bottom: 10),
                                        physics: const BouncingScrollPhysics(
                                            parent:
                                                AlwaysScrollableScrollPhysics()),
                                        itemCount: citymultipalModel.length,
                                        itemBuilder: (context, index) {
                                          var citydata =
                                              citymultipalModel[index];
                                          return AnimationConfiguration
                                              .staggeredGrid(
                                            position: index,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            columnCount:
                                                citymultipalModel.length,
                                            child: ScaleAnimation(
                                              duration: const Duration(
                                                  milliseconds: 900),
                                              curve:
                                                  Curves.fastLinearToSlowEaseIn,
                                              scale: 1.5,
                                              child: FadeInAnimation(
                                                  child: GestureDetector(
                                                onTap: () {
                                                  if (citydata.cityName ==
                                                      "23+ More") {
                                                    setState(() {
                                                      selectedName =
                                                          citydata.cityName;
                                                      multipalDestination =
                                                          true;
                                                    });
                                                  } else {
                                                    // Get.toNamed(Routes
                                                    //     .travelPlanningPage);
                                                    setState(() {
                                                      selectedName =
                                                          citydata.cityName;
                                                      multipalDestination =
                                                          false;
                                                    });
                                                  }
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      citydata.cityName ==
                                                              "23+ More"
                                                          ? Container(
                                                              width: 60,
                                                              height: 60,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            11),
                                                                border: Border.all(
                                                                    color:
                                                                        kPrimaryColor,
                                                                    width: selectedName ==
                                                                            citydata.cityName
                                                                        ? 2.0
                                                                        : 1),
                                                              ),
                                                              child: Image.asset(
                                                                  citydata
                                                                      .image))
                                                          : Container(
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: selectedName ==
                                                                              citydata
                                                                                  .cityName
                                                                          ? kPrimaryColor
                                                                          : kWhiteColor,
                                                                      width:
                                                                          2.0),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12)),
                                                              child: Image.asset(
                                                                  citydata
                                                                      .image),
                                                            ),
                                                      const SizedBox(height: 3),
                                                      Text(
                                                        citydata.cityName,
                                                        style: const TextStyle(
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  // TranslateUpAnimation(
                                  //   child: Column(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.center,
                                  //     crossAxisAlignment:
                                  //         CrossAxisAlignment.center,
                                  //     children: [
                                  //       Row(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle8.png",
                                  //               "London",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle9.png",
                                  //               "Paris",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle10.png",
                                  //               "New York",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle11.png",
                                  //               "Mumbai",
                                  //               false,
                                  //               Icons.add),
                                  //         ],
                                  //       ),
                                  //       Row(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle10.png",
                                  //               "New York",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle11.png",
                                  //               "Mumbai",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle12.png",
                                  //               "Amsterdam",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle13.png",
                                  //               "Nepal",
                                  //               false,
                                  //               Icons.add),
                                  //         ],
                                  //       ),
                                  //       Row(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle10.png",
                                  //               "New York",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle11.png",
                                  //               "Mumbai",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle12.png",
                                  //               "Amsterdam",
                                  //               false,
                                  //               Icons.add),
                                  //           buildCardWidget(
                                  //               "assets/images/Rectangle13.png",
                                  //               "Nepal",
                                  //               false,
                                  //               Icons.add),
                                  //         ],
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          )
                        : Card(
                            child: SizedBox(
                              height: 155,
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
                                  SizedBox(
                                    width: Get.width,
                                    height: 105,
                                    child: AnimationLimiter(
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        physics: const BouncingScrollPhysics(
                                            parent:
                                                AlwaysScrollableScrollPhysics()),
                                        itemCount: cityModel.length,
                                        itemBuilder: (context, index) {
                                          var citydata = cityModel[index];
                                          return AnimationConfiguration
                                              .staggeredGrid(
                                            position: index,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            columnCount: cityModel.length,
                                            child: ScaleAnimation(
                                              duration: const Duration(
                                                  milliseconds: 900),
                                              curve:
                                                  Curves.fastLinearToSlowEaseIn,
                                              scale: 1.5,
                                              child: FadeInAnimation(
                                                  child: GestureDetector(
                                                onTap: () {
                                                  if (citydata.cityName ==
                                                      "23+ More") {
                                                    setState(() {
                                                      selectedName =
                                                          citydata.cityName;
                                                      multipalDestination =
                                                          true;
                                                    });
                                                  } else {
                                                    // Get.toNamed(Routes
                                                    //     .travelPlanningPage);
                                                    setState(() {
                                                      selectedName =
                                                          citydata.cityName;
                                                      multipalDestination =
                                                          false;
                                                    });
                                                  }
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      citydata.cityName ==
                                                              "23+ More"
                                                          ? Container(
                                                              width: 60,
                                                              height: 60,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            11),
                                                                border: Border.all(
                                                                    color:
                                                                        kPrimaryColor,
                                                                    width: selectedName ==
                                                                            citydata.cityName
                                                                        ? 2.0
                                                                        : 1),
                                                              ),
                                                              child: Image.asset(
                                                                  citydata
                                                                      .image))
                                                          : Container(
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: selectedName ==
                                                                              citydata
                                                                                  .cityName
                                                                          ? kPrimaryColor
                                                                          : kWhiteColor,
                                                                      width:
                                                                          2.0),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12)),
                                                              child: Image.asset(
                                                                  citydata
                                                                      .image),
                                                            ),
                                                      const SizedBox(height: 3),
                                                      Text(
                                                        citydata.cityName,
                                                        style: const TextStyle(
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    const SizedBox(height: 45),
                    buildStapWidget(
                        "01",
                        "Which city are you excited to explore",
                        "assets/icons/Frame1584.png",
                        true,
                        activeStep1 ? true : false,
                        explorecController,
                        isFormSubmitted,
                        "Please enter city"),
                    buildStapWidget(
                        "02",
                        "How many days are you planning to stay?",
                        "assets/icons/Frame1586.png",
                        true,
                        activeStep2 ? true : false,
                        daysController,
                        isFormSubmitted,
                        "Please enter days"),
                    buildStapWidget(
                        "03",
                        "Would you be comfortable sharing budget for this trip?",
                        "assets/icons/Frame1592.png",
                        true,
                        activeStep3 ? true : false,
                        budgetController,
                        isFormSubmitted,
                        "Please enter budget"),
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
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                      const BoxDecoration(color: kPrimaryColor),
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
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: size.width - 100,
                                                        child: const Text(
                                                          "What Transportation option do you prefer to use to explore the city?",
                                                          style: TextStyle(
                                                            color:
                                                                kPrimaryColor,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      Row(
                                                        children: [
                                                          buildSecondeTabWidget(
                                                              "assets/icons/Group483.png",
                                                              "Bus"),
                                                          const SizedBox(
                                                              width: 5),
                                                          buildSecondeTabWidget(
                                                              "assets/icons/Group1137.png",
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
                                      const BoxDecoration(color: kPrimaryColor),
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
                                color: kPrimaryColor,
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
                                  setState(() {
                                    isFormSubmitted = true;
                                  });
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  Future.delayed(
                                      const Duration(milliseconds: 100),
                                      () async {
                                    if (_tripFormKey.currentState!.validate() &&
                                        selectedTab != "" &&
                                        selectedTab2 != "") {
                                      Get.dialog(
                                        barrierDismissible: false,
                                        Dialog(
                                          backgroundColor: kWhiteColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
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
                                                  // GestureDetector(
                                                  //   onTap: () {
                                                  //     Get.back();
                                                  //   },
                                                  //   child: Image.asset(
                                                  //     "assets/icons/Group1143.png", // Group1143
                                                  //     scale: 1.5,
                                                  //   ),
                                                  // ),
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
                                                      fontFamily:
                                                          kFuturaPTBook),
                                                ),
                                              ),
                                              const SizedBox(height: 18)
                                            ],
                                          ),
                                        ),
                                      );
                                      tripService.genrateTrip(
                                          explorecController.text,
                                          daysController.text,
                                          selectedTab,
                                          budgetController.text,
                                          selectedTab2);
                                      explorecController.clear();
                                      budgetController.clear();
                                      daysController.clear();
                                      setState(() {
                                        selectedTab = "";
                                        selectedTab2 = "";
                                      });
                                    }
                                  });
                                }),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Delivered in less than 1 minute",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kFuturaPTBook),
                          ),
                          const SizedBox(height: 15)
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  buildStapWidget(
      String step,
      String title,
      String image,
      bool textfild,
      bool nextbutton,
      TextEditingController controller,
      bool formSubmitted,
      String validationMsg) {
    Size size = MediaQuery.of(context).size;
    bool isTouched = false;
    validateInput(value) {
      if (isTouched || formSubmitted) {
        if (value != null && value?.toString() != '') {
          if (value.isEmpty) {
            validationMsg;
          }
          return null;
        }
        return validationMsg;
      }
      return null;
    }

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
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: nextbutton ? kPrimaryColor : kCardColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 7),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 2),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: nextbutton
                                        ? size.width - 150
                                        : size.width - 85,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        TextFormField(
                                          controller: controller,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          validator: (value) {
                                            return validateInput(value);
                                          },
                                          autofocus: true,
                                          keyboardType: step == "01"
                                              ? TextInputType.text
                                              : TextInputType.number,
                                          focusNode: step == "01"
                                              ? focusNode1
                                              : step == "02"
                                                  ? focusNode2
                                                  : step == "03"
                                                      ? focusNode3
                                                      : focusNode4,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    5, 0, 15, 10),
                                            hintText: step == "01"
                                                ? "London"
                                                : step == "02"
                                                    ? "7 Days"
                                                    : '500\$',
                                            labelText: '',
                                            border: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: kPrimaryColor,
                                                width: 0.5,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: kPrimaryColor,
                                                  width: 0.2),
                                            ),
                                          ),
                                          maxLines: 1,
                                          onChanged: (value) => {
                                            isTouched = true,
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: nextbutton ? 10 : 0),
                                  nextbutton
                                      ? GestureDetector(
                                          onTap: () {
                                            if (step == "01") {
                                              setState(() {
                                                activeStep2 = true;
                                                activeStep1 = false;
                                                FocusScope.of(context)
                                                    .requestFocus(focusNode2);
                                              });
                                            } else if (step == "02") {
                                              setState(() {
                                                activeStep3 = true;
                                                activeStep2 = false;
                                                FocusScope.of(context)
                                                    .requestFocus(focusNode3);
                                              });
                                            } else if (step == "03") {
                                              setState(() {
                                                activeStep3 = false;
                                                FocusScope.of(context)
                                                    .requestFocus(focusNode4);
                                                selectedTab = "City Explorer";
                                              });
                                            }
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Center(
                                              child: Text(
                                                "NEXT",
                                                style: TextStyle(
                                                    color: kWhiteColor),
                                              ),
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
                  decoration: const BoxDecoration(color: kPrimaryColor),
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
                    ? kPrimaryColor
                    : const Color(0xFFD2D2D2),
                width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 5),
          child: Row(
            children: [
              Image.asset(
                image,
                scale: 1.4,
              ),
              const SizedBox(width: 5),
              Text(
                name,
                style: const TextStyle(fontSize: 9.4),
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
                    ? kPrimaryColor
                    : const Color(0xFFD2D2D2),
                width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 20,
                width: 20,
                fit: BoxFit.cover,
                // scale: 0.5,
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
}
