import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class TravelPlanningPage extends StatefulWidget {
  const TravelPlanningPage({super.key});

  @override
  State<TravelPlanningPage> createState() => _TravelPlanningPageState();
}

class _TravelPlanningPageState extends State<TravelPlanningPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 15,
        automaticallyImplyLeading: false,
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
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "London \ntrip Itinerary",
                          style: TextStyle(
                              color: kBorderColor,
                              fontSize: 23,
                              fontFamily: kFuturaPTBold),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                bottomSheetForDownload();
                              },
                              icon: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(
                                        color: kBorderColor, width: 0.5)),
                                child: const Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Icon(
                                      Icons.download_outlined,
                                      size: 20,
                                    )),
                              )),
                          IconButton(
                              onPressed: () {
                                bottomSheetForUsefulTools();
                              },
                              icon: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(38),
                                    border: Border.all(
                                        color: kBorderColor, width: 0.5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Image.asset(
                                    "assets/icons/tools.png",
                                    width: 17,
                                    height: 17,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Day 1",
                                style: TextStyle(
                                    color: ksecondaryColor,
                                    fontSize: 15,
                                    fontFamily: kFuturaPTBook),
                              ),
                            ),
                            buildDaysTImelineWidget(
                                "9 AM- Breakfast at Hotel",
                                "Enjoy a delicious breakfast at hotel",
                                "\$500 USD"),
                            const Divider(
                              thickness: 0.8,
                              color: kDividerColor,
                            ),
                            buildDaysTImelineWidget(
                                "10 AM- Marble Rocks at Bhedaghat",
                                "Visit the famous Visit the famous Marble Rocks, a magnificent gorge along the Narmada River, known for its stunning marble cliffs and boad rides.",
                                "\$500 USD"),
                            const Divider(
                              thickness: 0.8,
                              color: kDividerColor,
                            ),
                            buildDaysTImelineWidget(
                                "1PM- Lunch at Bhedghat",
                                "Test some local delicious at a restaurant near marble rocks",
                                "\$500 USD"),
                            const Divider(
                              thickness: 0.8,
                              color: kDividerColor,
                            ),
                            buildDaysTImelineWidget(
                                "3PM-Dhunandhar falls",
                                "Test some local delicious at a restaurant near marble rocks",
                                "\$500 USD"),
                            const SizedBox(height: 10)
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(color: kBorderColor),
                        width: 1.2,
                        height: 60,
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Day 2",
                                style: TextStyle(
                                    color: ksecondaryColor,
                                    fontSize: 15,
                                    fontFamily: kFuturaPTBook),
                              ),
                            ),
                            buildDaysTImelineWidget(
                                "9 AM- Breakfast at Hotel",
                                "Enjoy a delicious breakfast at hotel",
                                "\$500 USD"),
                            const Divider(
                              thickness: 0.8,
                              color: kDividerColor,
                            ),
                            buildDaysTImelineWidget(
                                "10 AM- Marble Rocks at Bhedaghat",
                                "Visit the famous Visit the famous Marble Rocks, a magnificent gorge along the Narmada River, known for its stunning marble cliffs and boad rides.",
                                "\$500 USD"),
                            const Divider(
                              thickness: 0.8,
                              color: kDividerColor,
                            ),
                            buildDaysTImelineWidget(
                                "1PM- Lunch at Bhedghat",
                                "Test some local delicious at a restaurant near marble rocks",
                                "\$500 USD"),
                            const Divider(
                              thickness: 0.8,
                              color: kDividerColor,
                            ),
                            buildDaysTImelineWidget(
                                "3PM-Dhunandhar falls",
                                "Test some local delicious at a restaurant near marble rocks",
                                "\$500 USD"),
                            const SizedBox(height: 10)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildDaysTImelineWidget(String title, String description, String budgetUSD) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/icons/timer.png"),
              Text(
                title,
                style: const TextStyle(
                    color: kBorderColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 5),
          child: Text(
            description,
            style: const TextStyle(
              color: ksecondaryColor,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/Frame1701.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Budget",
                        style: TextStyle(
                          color: kBorderColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        budgetUSD,
                        style: const TextStyle(
                            color: ksecondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                bottomSheetForDetails();
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Text(
                  "View Details",
                  style: TextStyle(
                    color: kBorderColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  bottomSheetForDetails() {
    return showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: kBackGroundColor,
      builder: (context) {
        return Wrap(
          children: [
            const Center(
              child: ImageIcon(
                AssetImage("assets/icons/line.png"),
                size: 30,
                color: Color(0XffBFC5CC),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: SizedBox(
                height: Get.height / 1.8,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Details",
                        style: TextStyle(
                            color: kBorderColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "This itinerary is designed for a city explorer person visiting jabalpur for 10 days",
                        style: TextStyle(color: ksecondaryColor, fontSize: 16),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(2)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                      "assets/icons/Frame1584.png",
                                      scale: 1.3),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "City",
                                    style: TextStyle(
                                      color: kBorderColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "London",
                                    style: TextStyle(
                                      color: ksecondaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 25),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(2)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset("assets/icons/Group4.png",
                                      scale: 2.1),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kind of Traveler",
                                    style: TextStyle(
                                      color: kBorderColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "London",
                                    style: TextStyle(
                                      color: ksecondaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(2)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                      "assets/icons/Frame1586.png",
                                      scale: 1.6),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Days",
                                    style: TextStyle(
                                      color: kBorderColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "07 Days",
                                    style: TextStyle(
                                      color: ksecondaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 25),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(2)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                      "assets/icons/Group1137.png",
                                      scale: 1.6),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Transport",
                                    style: TextStyle(
                                      color: kBorderColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "Car",
                                    style: TextStyle(
                                      color: ksecondaryColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(2)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset("assets/icons/Frame1701.png",
                                  scale: 1),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Budget",
                                style: TextStyle(
                                  color: kBorderColor,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$500 USD",
                                style: TextStyle(
                                  color: ksecondaryColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kBorderColor, width: 1)),
                        child: const Center(
                          child: Text(
                            "Update Details",
                            style: TextStyle(color: kBorderColor, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  bottomSheetForDownload() {
    return showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: kBackGroundColor,
      builder: (context) {
        return Wrap(
          children: [
            const Center(
              child: ImageIcon(
                AssetImage("assets/icons/line.png"),
                size: 30,
                color: Color(0XffBFC5CC),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: SizedBox(
                height: Get.height / 6,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Download",
                        style: TextStyle(
                            color: kBorderColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(
                                    color: kBorderColor, width: 0.3)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/icons/PDFHD.png",
                                  width: 22, height: 22),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("PDF"),
                          SizedBox(width: 70),
                          const SizedBox(width: 15),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(
                                    color: kBorderColor, width: 0.3)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/icons/PPTHD.png",
                                  width: 26, height: 26),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("PPT"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  bottomSheetForUsefulTools() {
    return showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: kBackGroundColor,
      builder: (context) {
        return Wrap(
          children: [
            const Center(
              child: ImageIcon(
                AssetImage("assets/icons/line.png"),
                size: 30,
                color: Color(0XffBFC5CC),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: SizedBox(
                height: Get.height / 4,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Usefull Tools",
                        style: TextStyle(
                            color: kBorderColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(
                                    color: kBorderColor, width: 0.3)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/icons/PDFHD.png",
                                  width: 22, height: 22),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                              "Books Things To Do, Attractions, and Tours")
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(
                                    color: kBorderColor, width: 0.3)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/MYTRIP.png",
                                width: 22,
                                height: 22,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text("Cheap Flights With Cashback")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
