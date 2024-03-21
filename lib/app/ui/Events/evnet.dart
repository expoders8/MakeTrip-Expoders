import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:maketrip/config/constant/font_constant.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../routes/app_pages.dart';
import '../widgets/statistic_widget.dart';
import '../../../config/constant/color_constant.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  var userImage = [
    "assets/images/Ellipse1.png",
    "assets/images/Ellipse2.png",
    "assets/images/Ellipse3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Near by Event",
          style: TextStyle(fontSize: 16),
        ),
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kAppBackGround1Color, kAppBackGround2Color],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.repeated),
          ),
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
              return <Widget>[
                createSilverAppBar1(),
              ];
            },
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Upcoming Events",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: kCircularStdMedium,
                          fontSize: 11),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: kWhiteColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Weekdays",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kCircularStdNormal,
                                    fontSize: 11),
                              ),
                              const SizedBox(width: 5),
                              Image.asset(
                                'assets/icons/arrow_bottom_outline.png',
                                color: kPrimaryColor,
                                scale: 1.8,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 100,
                          height: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: kWhiteColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Event Type",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kCircularStdNormal,
                                    fontSize: 11),
                              ),
                              const SizedBox(width: 5),
                              Image.asset(
                                'assets/icons/arrow_bottom_outline.png',
                                color: kPrimaryColor,
                                scale: 1.8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15),
                AnimationLimiter(
                  child: Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: const Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: const Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 2500),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.eventDetailsPage);
                                },
                                child: Card(
                                  elevation: 6,
                                  shadowColor:
                                      const Color.fromARGB(50, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius:
                                            BorderRadius.circular(23)),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/Ellipse4.png",
                                                  scale: 1.5,
                                                ),
                                                const SizedBox(width: 10),
                                                const Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Amelia Kimani",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryColor,
                                                            fontSize: 17,
                                                            fontFamily:
                                                                kCircularStdMedium)),
                                                    Text("Event Manager",
                                                        style: TextStyle(
                                                            color:
                                                                kTextDiscriptionColor,
                                                            fontFamily:
                                                                kCircularStdNormal,
                                                            fontSize: 14)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/icons/horizontalDots.png",
                                                    scale: 1.3,
                                                  ),
                                                  const Text("4m",
                                                      style: TextStyle(
                                                          color:
                                                              kTextDiscriptionColor,
                                                          fontFamily:
                                                              kCircularStdNormal,
                                                          fontSize: 14)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              foregroundDecoration:
                                                  const BoxDecoration(
                                                color: kWhiteColor,
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20)),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF121330),
                                                    Colors.transparent,
                                                    Colors.transparent,
                                                    Color(0xFF121330)
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  stops: [0, 0, 0.2, 1],
                                                ),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  "assets/images/crismasParty.png",
                                                  fit: BoxFit.cover,
                                                  width: Get.width,
                                                  height: 220,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 17,
                                              left: 17,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: kWhiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                width: 42,
                                                height: 56,
                                                child: const Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "06",
                                                      style: TextStyle(
                                                          color: kPrimaryColor,
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      "DAYS",
                                                      style: TextStyle(
                                                          color:
                                                              kTextDiscriptionColor,
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const Positioned(
                                              left: 12,
                                              bottom: 68,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Today's",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdNormal,
                                                        fontSize: 15),
                                                  ),
                                                  Text(
                                                    "Chrismas Party",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdBold,
                                                        fontSize: 18),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 25,
                                              left: 9,
                                              right: 9,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/calendar_month.png',
                                                    color: kWhiteColor,
                                                    scale: 1.3,
                                                  ),
                                                  const SizedBox(width: 3),
                                                  const Text(
                                                    "20 March, 2022",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdNormal,
                                                        fontSize: 11),
                                                  ),
                                                  const SizedBox(width: 3),
                                                  const Text(
                                                    "/",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdNormal,
                                                        fontSize: 13),
                                                  ),
                                                  const SizedBox(width: 3),
                                                  Image.asset(
                                                    'assets/icons/timer.png',
                                                    color: kWhiteColor,
                                                    scale: 1.3,
                                                  ),
                                                  const SizedBox(width: 3),
                                                  const Text(
                                                    "10:30 PM",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdNormal,
                                                        fontSize: 11),
                                                  ),
                                                  const SizedBox(width: 4),
                                                  const Text(
                                                    "/",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdNormal,
                                                        fontSize: 13),
                                                  ),
                                                  const SizedBox(width: 4),
                                                  Image.asset(
                                                    'assets/icons/pin_drop.png',
                                                    color: kWhiteColor,
                                                    scale: 1.8,
                                                  ),
                                                  const SizedBox(width: 2),
                                                  const Text(
                                                    "San Francisco",
                                                    style: TextStyle(
                                                        color: kWhiteColor,
                                                        fontFamily:
                                                            kCircularStdNormal,
                                                        fontSize: 11),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  for (int i = 0;
                                                      i < userImage.length;
                                                      i++)
                                                    Align(
                                                      widthFactor: 0.6,
                                                      child: ClipOval(
                                                        child: Image.asset(
                                                          userImage[i],
                                                          width: 41,
                                                          height: 41,
                                                          errorBuilder: (context,
                                                                  error,
                                                                  stackTrace) =>
                                                              Image.asset(
                                                            "assets/images/blank_profile.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                "+38 more participated",
                                                style: TextStyle(
                                                    color:
                                                        kTextDiscriptionColor,
                                                    fontFamily:
                                                        kCircularStdNormal,
                                                    fontSize: 11),
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color: kTextSecondaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: const Center(
                                                child: Text(
                                                  "Join",
                                                  style: TextStyle(
                                                      color: kWhiteColor,
                                                      fontFamily:
                                                          kCircularStdNormal,
                                                      fontSize: 11),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const StatisticWidget()
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  SliverAppBar createSilverAppBar1() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kTransparentColor,
      expandedHeight: Platform.isAndroid ? 190 : 145,
      floating: false,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Stack(
            children: [
              SizedBox(
                height: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/event.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                left: 12,
                bottom: 68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontFamily: kCircularStdNormal,
                          fontSize: 15),
                    ),
                    Text(
                      "Chrismas Party",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontFamily: kCircularStdBold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 25,
                left: 9,
                right: 9,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(150, 45, 47, 50)),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/calendar_month.png',
                        color: kWhiteColor,
                        scale: 1.3,
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        "20 March, 2022",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kCircularStdNormal,
                            fontSize: 11),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "/",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kCircularStdNormal,
                            fontSize: 13),
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        'assets/icons/timer.png',
                        color: kWhiteColor,
                        scale: 1.3,
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        "10:30 PM",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kCircularStdNormal,
                            fontSize: 11),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "/",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kCircularStdNormal,
                            fontSize: 13),
                      ),
                      const SizedBox(width: 4),
                      Image.asset(
                        'assets/icons/pin_drop.png',
                        color: kWhiteColor,
                        scale: 1.8,
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        "San Francisco",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kCircularStdNormal,
                            fontSize: 11),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
