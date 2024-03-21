import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maketrip/config/constant/font_constant.dart';

import '../../../config/constant/color_constant.dart';
import '../widgets/statistic_widget.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({super.key});

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  var userImage = [
    "assets/images/Ellipse1.png",
    "assets/images/Ellipse2.png",
    "assets/images/Ellipse3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Event Details",
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
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kAppBackGround1Color, kAppBackGround2Color],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.repeated),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        foregroundDecoration: const BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
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
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/crismasParty.png",
                            height: 240,
                            width: Get.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 20,
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
                        bottom: 20,
                        right: 20,
                        child: Container(
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(9)),
                          width: 42,
                          height: 56,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "06",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 15),
                              ),
                              Text(
                                "DAYS",
                                style: TextStyle(
                                    color: kTextDiscriptionColor, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: kWhiteColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Get.width - 100,
                                child: const Text(
                                  "Description",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                      fontFamily: kCircularStdNormal),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: Get.width - 30,
                                child: const Text(
                                  "Experience the magic of Christmas at our enchanting carol concert. Join us for an evening of timeless melodies and heartwarming performances by local choirs and musicians. ",
                                  style: TextStyle(
                                      color: kTextDiscriptionColor,
                                      fontSize: 16),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Participated",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 16,
                                    fontFamily: kCircularStdNormal),
                              ),
                              const SizedBox(height: 5),
                              const StatisticWidget(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: kWhiteColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Event Location",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 16,
                                    fontFamily: kCircularStdNormal),
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
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: Get.width - 40,
                                child: const Text(
                                  "Dream world wide in jakarta",
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 17),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: Get.width - 30,
                                child: const Text(
                                  "Lorem ipsum is a placeholder text commonly used to demon strate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder  ",
                                  style: TextStyle(
                                      color: kTextDiscriptionColor,
                                      fontSize: 16),
                                ),
                              ),
                              const SizedBox(height: 15),
                              buildeventLocationDetailssWidget(
                                  "assets/icons/calendar_month.png",
                                  "Sunday",
                                  "20 March, 2022"),
                              const SizedBox(height: 10),
                              buildeventLocationDetailssWidget(
                                  "assets/icons/timer.png", "", "10:30 PM"),
                              const SizedBox(height: 10),
                              buildeventLocationDetailssWidget(
                                  "assets/icons/Frame1868.png",
                                  "",
                                  "+91 123 456 7891"),
                              const SizedBox(height: 25),
                              SizedBox(
                                width: Get.width,
                                child: CupertinoButton(
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(25),
                                    child: const Text("Join Now"),
                                    onPressed: () {}),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Events",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontFamily: kCircularStdMedium),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: kButtonColor,
                              fontSize: 14,
                              fontFamily: kCircularStdNormal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildEventsWidget(),
                  buildEventsWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildeventLocationDetailssWidget(
    String image,
    String days,
    String time,
  ) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: image == "assets/icons/timer.png"
                ? const Color(0xFFFFF8EC)
                : image == "assets/icons/Frame1868.png"
                    ? const Color(0xFFEDFFF4)
                    : const Color(0xFFFFE9E7),
            border: Border.all(
                color: image == "assets/icons/timer.png"
                    ? const Color(0xFFE9D39B)
                    : image == "assets/icons/Frame1868.png"
                        ? const Color(0xFF1EB279)
                        : const Color(0xFFFC8F86)),
          ),
          child: Image.asset(
            image,
            color: image == "assets/icons/timer.png"
                ? const Color(0xFFF9CC5D)
                : image == "assets/icons/Frame1868.png"
                    ? const Color(0xFF1EB279)
                    : const Color(0xFFFD6253),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            days == ""
                ? Container()
                : Text(
                    days,
                    style: const TextStyle(
                        color: kTextDiscriptionColor,
                        fontSize: 14,
                        fontFamily: kCircularStdNormal),
                  ),
            days == "" ? Container() : const SizedBox(height: 5),
            Text(
              time,
              style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                  fontFamily: kCircularStdNormal),
            ),
          ],
        ),
      ],
    );
  }

  buildEventsWidget() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 6,
        shadowColor: const Color.fromARGB(50, 0, 0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(23)),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Ellipse4.png",
                        scale: 1.5,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Amelia Kimani",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 17,
                                  fontFamily: kCircularStdMedium)),
                          Text("Event Manager",
                              style: TextStyle(
                                  color: kTextDiscriptionColor,
                                  fontFamily: kCircularStdNormal,
                                  fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/icons/horizontalDots.png",
                          scale: 1.3,
                        ),
                        const Text("4m",
                            style: TextStyle(
                                color: kTextDiscriptionColor,
                                fontFamily: kCircularStdNormal,
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
                    foregroundDecoration: const BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
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
                      borderRadius: BorderRadius.circular(20),
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
                          borderRadius: BorderRadius.circular(9)),
                      width: 42,
                      height: 56,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "06",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 15),
                          ),
                          Text(
                            "DAYS",
                            style: TextStyle(
                                color: kTextDiscriptionColor, fontSize: 13),
                          ),
                        ],
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
                        const SizedBox(width: 3),
                        const Text(
                          "/",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontFamily: kCircularStdNormal,
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
                              fontFamily: kCircularStdNormal,
                              fontSize: 11),
                        ),
                        const SizedBox(width: 4),
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
                        const SizedBox(width: 2),
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
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < userImage.length; i++)
                          Align(
                            widthFactor: 0.6,
                            child: ClipOval(
                              child: Image.asset(
                                userImage[i],
                                width: 41,
                                height: 41,
                                errorBuilder: (context, error, stackTrace) =>
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
                    padding: EdgeInsets.only(right: 20.0),
                    child: Text(
                      "+38 more participated",
                      style: TextStyle(
                          color: kTextDiscriptionColor,
                          fontFamily: kCircularStdNormal,
                          fontSize: 11),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        color: kTextSecondaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        "Join",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kCircularStdNormal,
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
    );
  }
}
