import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maketrip/config/constant/font_constant.dart';
import 'package:readmore/readmore.dart';

import '../../../config/animation/translate_right_animation.dart';
import '../../../config/constant/color_constant.dart';

class TripDetailsPage extends StatefulWidget {
  const TripDetailsPage({super.key});

  @override
  State<TripDetailsPage> createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        // appBar: AppBar(
        //   flexibleSpace: Container(
        //     decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //         begin: Alignment.centerLeft,
        //         end: Alignment.centerRight,
        //         colors: [kAppBackGround1Color, kAppBackGround2Color],
        //       ),
        //     ),
        //   ),
        // ),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kAppBackGround1Color, kAppBackGround2Color],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.repeated),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height - 94,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/Rectangle740.png",
                                    height: 266,
                                    width: Get.width,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 20,
                                      child: TranslateRightAnimation(
                                        child: Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: kWhiteColor),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/icons/grid_view.png",
                                                fit: BoxFit.cover,
                                              ),
                                              const SizedBox(width: 5),
                                              const Text("View More"),
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 12, bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: Get.width - 100,
                                      child: const Text(
                                        "The Burj Khalifa Tickets",
                                        style: TextStyle(
                                            color: kPrimaryColor, fontSize: 22),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width - 100,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/icons/Location.png",
                                            height: 20,
                                            width: 20,
                                            color: kTextDiscriptionColor,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "Downtown Dubai,Dubai",
                                            style: TextStyle(
                                                color: kTextDiscriptionColor,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const TabBar(
                                      tabAlignment: TabAlignment.start,
                                      indicatorPadding: EdgeInsets.all(10),
                                      isScrollable: true,
                                      dividerColor: kWhiteColor,
                                      indicatorColor: kPrimaryColor,
                                      labelColor: kPrimaryColor,
                                      labelStyle: TextStyle(
                                          fontFamily: kCircularStdMedium),
                                      unselectedLabelColor:
                                          kTextDiscriptionColor,
                                      tabs: [
                                        Tab(
                                          text: 'Overview',
                                        ),
                                        Tab(text: 'Highlights'),
                                        Tab(text: 'What to Expect'),
                                        Tab(text: 'Gallery'),
                                        Tab(text: 'Visitor Reviews'),
                                        Tab(text: 'Address'),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const ReadMoreText(
                                      "Embarking on a tour of the Burj khalifa promises an awe-inspiring experience as you explore one jjdjdjdjdjdjwewerwerwerwerwerwerwerwerwerwerwer",
                                      trimLines: 2,
                                      delimiter: "...",
                                      style: TextStyle(
                                          color: kTextDiscriptionColor),
                                      lessStyle:
                                          TextStyle(color: kPrimaryColor),
                                      moreStyle:
                                          TextStyle(color: kPrimaryColor),
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: 'Read more',
                                      trimExpandedText: '...Read less',
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Highlights",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 23),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        buildHighlightsWidget(
                                            "assets/icons/language_FILL.png",
                                            "English/Arabic",
                                            "Languages"),
                                        const SizedBox(width: 10),
                                        buildHighlightsWidget(
                                            "assets/icons/calendar_month.png",
                                            "Instant",
                                            "Confirmation")
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        buildHighlightsWidget(
                                            "assets/icons/confirmation_number.png",
                                            "Mobile",
                                            "Voucher"),
                                        const SizedBox(width: 10),
                                        buildHighlightsWidget(
                                            "assets/icons/timer.png",
                                            "10 AM to Midnight",
                                            "Timing")
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "What to Expect",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 23),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/check_circle.png",
                                          color: kPrimaryColor,
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                          width: Get.width - 90,
                                          child: const Text(
                                            "The restaurant is likely to have a theme centered around heroes or heroism",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 14,
                                                fontFamily: kCircularStdNormal),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/check_circle.png",
                                          color: kPrimaryColor,
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                          width: Get.width - 90,
                                          child: const Text(
                                            "The restaurant is likely to have a theme centered around heroes or heroism",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 14,
                                                fontFamily: kCircularStdNormal),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/check_circle.png",
                                          color: kPrimaryColor,
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                          width: Get.width - 90,
                                          child: const Text(
                                            "The restaurant is likely to have a theme centered around heroes or heroism",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 14,
                                                fontFamily: kCircularStdNormal),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: Get.width - 45,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1, color: kPrimaryColor)),
                                      child: const Center(
                                        child: Text(
                                          "Show less",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Gallery",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 23),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 150,
                                          width: Get.width / 2.3,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                5.0), // You can adjust the radius as needed
                                            child: Image.asset(
                                              "assets/images/hotel1.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 73,
                                              width: Get.width / 5,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(
                                                    5.0), // You can adjust the radius as needed
                                                child: Image.asset(
                                                  "assets/images/hotel2.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              height: 73,
                                              width: Get.width / 5,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Image.asset(
                                                  "assets/images/hotel3.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 73,
                                              width: Get.width / 5,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(
                                                    5.0), // You can adjust the radius as needed
                                                child: Image.asset(
                                                  "assets/images/hotel2.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              height: 73,
                                              width: Get.width / 5,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(
                                                    5.0), // You can adjust the radius as needed
                                                child: Image.asset(
                                                  "assets/images/hotel3.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: Get.width - 45,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1, color: kPrimaryColor)),
                                      child: const Center(
                                        child: Text(
                                          "View More",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "More details",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 23),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 190,
                                            height: 200,
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    width: 1,
                                                    color: kDividerColor)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 10),
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color: kPrimaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: const Icon(
                                                    Icons.check,
                                                    color: kWhiteColor,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  "How To Redeem",
                                                  style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 15,
                                                      fontFamily:
                                                          kCircularStdMedium),
                                                ),
                                                const Text(
                                                  "In this Tour",
                                                  style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          kCircularStdNormal),
                                                ),
                                                const SizedBox(height: 25),
                                                Container(
                                                  width: 120,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: kTextSecondaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "Know More",
                                                      style: TextStyle(
                                                          color: kWhiteColor),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: 190,
                                            height: 200,
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                border: Border.all(
                                                    width: 1,
                                                    color: kDividerColor)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 10),
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color: kPrimaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: const Icon(
                                                    Icons.check,
                                                    color: kWhiteColor,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  "How To Redeem",
                                                  style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 15,
                                                      fontFamily:
                                                          kCircularStdMedium),
                                                ),
                                                const Text(
                                                  "In this Tour",
                                                  style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          kCircularStdNormal),
                                                ),
                                                const SizedBox(height: 25),
                                                Container(
                                                  width: 120,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: kTextSecondaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "Know More",
                                                      style: TextStyle(
                                                          color: kWhiteColor),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      "Visitor Reviews",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 23),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "4.9 out of 5",
                                      style: TextStyle(
                                          color: kTextDiscriptionColor,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 5),
                                    Column(
                                      children: [
                                        buildProgressIndicatorWIdget(
                                            "5", "94%", 0.8),
                                        buildProgressIndicatorWIdget(
                                            "4", "25%", 0.3),
                                        buildProgressIndicatorWIdget(
                                            "3", "20%", 0.5),
                                        buildProgressIndicatorWIdget(
                                            "2", "0%", 0.1),
                                        buildProgressIndicatorWIdget(
                                            "1", "0%", 0.1),
                                      ],
                                    ),
                                    const SizedBox(height: 25),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                50.0), // You can adjust the radius as needed
                                            child: Image.asset(
                                              "assets/images/person1.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "Lots of Fun!",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 17,
                                              fontFamily: kCircularStdMedium),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          width: Get.width - 50,
                                          child: const Text(
                                            "As a trill-seeker, we enjoyed the leap of faith, master blast, and pose donts revenge a lot",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 16,
                                                fontFamily: kCircularStdNormal),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "By Ah/ January 2023",
                                          style: TextStyle(
                                              color: kTextDiscriptionColor,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                50.0), // You can adjust the radius as needed
                                            child: Image.asset(
                                              "assets/images/person1.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "Lots of Fun!",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 17,
                                              fontFamily: kCircularStdMedium),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          width: Get.width - 50,
                                          child: const Text(
                                            "As a trill-seeker, we enjoyed the leap of faith, master blast, and pose donts revenge a lot",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 16,
                                                fontFamily: kCircularStdNormal),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "By Ah/ January 2023",
                                          style: TextStyle(
                                              color: kTextDiscriptionColor,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: Get.width - 45,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1, color: kPrimaryColor)),
                                      child: const Center(
                                        child: Text(
                                          "View More",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Address",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 23),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: Get.width - 40,
                                      child: const Text(
                                        "Burj Khalifa, 1 Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - United Arab Emirates",
                                        style: TextStyle(
                                            color: kPrimaryColor, fontSize: 17),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 189,
                                      width: Get.width - 45,
                                      child: Image.asset(
                                        "assets/images/map.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Center(
                                      child: Container(
                                        width: 150,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: Border.all(
                                                width: 1,
                                                color: kPrimaryColor)),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/icons/support_agent.png",
                                                color: kPrimaryColor,
                                              ),
                                              const SizedBox(width: 10),
                                              const Text(
                                                "Need help",
                                                style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontSize: 17),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  color: const Color(0xFFF7F7F7),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 12, bottom: 9, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AED",
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 16),
                            ),
                            Text(
                              "From 93.00",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontFamily: kFuturaPTMedium),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kPrimaryColor),
                          child: const Center(
                            child: Text(
                              "Book Now",
                              style:
                                  TextStyle(color: kWhiteColor, fontSize: 16),
                            ),
                          ),
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

  buildProgressIndicatorWIdget(
      String numStar, String persontage, double value) {
    return Row(
      children: [
        Text(
          numStar,
          style: const TextStyle(color: kPrimaryColor, fontSize: 15),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: Get.width - 86,
          child: LinearProgressIndicator(
            backgroundColor: linearProgressIndicatorColor,
            valueColor: const AlwaysStoppedAnimation<Color>(kButtonColor),
            value: value,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          persontage,
          style: const TextStyle(color: kPrimaryColor, fontSize: 15),
        ),
      ],
    );
  }

  buildHighlightsWidget(
    String image,
    String text,
    String title,
  ) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kBorderColor)),
          child: Image.asset(
            image,
            height: 20,
            width: 20,
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 105,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(color: kTextDiscriptionColor, fontSize: 15),
              ),
              Text(
                text,
                style: const TextStyle(color: kPrimaryColor, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
