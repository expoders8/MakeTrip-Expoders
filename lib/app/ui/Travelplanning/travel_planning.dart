import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:maketrip/app/ui/home/home.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../../models/activity_model.dart';
import '../../routes/app_pages.dart';

class TravelPlanningPage extends StatefulWidget {
  final String? city;
  final String? days;
  final String? kind;
  final String? budget;
  final String? transportation;
  final String? dayDetails;
  const TravelPlanningPage(
      {super.key,
      this.city = "London",
      this.dayDetails,
      this.days,
      this.kind,
      this.budget,
      this.transportation});

  @override
  State<TravelPlanningPage> createState() => _TravelPlanningPageState();
}

class _TravelPlanningPageState extends State<TravelPlanningPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map<String, List<Activity>> activitiesMap = {};

    List<String> lines = widget.dayDetails!.split('\n');
    for (var line in lines) {
      List<String> parts = line.split('|');
      if (parts.length == 5) {
        String day = parts[0];
        Activity activity = Activity(
          day: day,
          time: parts[1],
          location: parts[2],
          description: parts[3],
          cost: parts[4],
        );
        if (!activitiesMap.containsKey(day)) {
          activitiesMap[day] = [];
        }
        activitiesMap[day]!.add(activity);
      }
    }
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${widget.city}\ntrip Itinerary",
                          style: const TextStyle(
                              color: kPrimaryColor,
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
                                        color: kPrimaryColor, width: 0.5)),
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
                                        color: kPrimaryColor, width: 0.5)),
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
                  SizedBox(
                    height: Get.height - 130,
                    width: Get.width,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      itemCount: activitiesMap.length,
                      itemBuilder: (context, index) {
                        String day = activitiesMap.keys.elementAt(index);
                        var activities = activitiesMap[day];
                        return Column(
                          children: [
                            Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      day,
                                      style: const TextStyle(
                                          color: ksecondaryColor,
                                          fontSize: 15,
                                          fontFamily: kFuturaPTBook),
                                    ),
                                  ),
                                  buildTripPlans(activities!),
                                ],
                              ),
                            ),
                            activitiesMap.length - 1 == index
                                ? Container()
                                : Container(
                                    decoration: const BoxDecoration(
                                        color: kPrimaryColor),
                                    width: 0.7,
                                    height: 60,
                                  ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bottomSheetForDetails(
    String city,
    String days,
    String budget,
    String kind,
    String transport,
  ) {
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
                            color: kPrimaryColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "This itinerary is designed for a city explorer person visiting jabalpur for $days days",
                        style: const TextStyle(
                            color: ksecondaryColor, fontSize: 16),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "City",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    city,
                                    style: const TextStyle(
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Kind of Traveler",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    kind,
                                    style: const TextStyle(
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Days",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "$days Days",
                                    style: const TextStyle(
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Transport",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    transport,
                                    style: const TextStyle(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Budget",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$$budget USD",
                                style: const TextStyle(
                                  color: ksecondaryColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => HomePage(
                                city: city,
                                budget: budget,
                                days: days,
                                kind: kind,
                                transport: transport,
                              ));
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
                              "Update Details",
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 16),
                            ),
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
                            color: kPrimaryColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          CupertinoButton(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            onPressed: () {
                              Get.back();
                              // bottomSheetForUpgradeToPro();
                              Get.toNamed(Routes.upgradeToProPage);
                            },
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      border: Border.all(
                                          color: kPrimaryColor, width: 0.3)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/icons/PDFHD.png",
                                        width: 22, height: 22),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "PDF",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: kCircularStdMedium,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 70),
                          const SizedBox(width: 15),
                          CupertinoButton(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            onPressed: () {
                              Get.back();
                              Get.toNamed(Routes.upgradeToProPage);
                            },
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      border: Border.all(
                                          color: kPrimaryColor, width: 0.3)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/icons/PPTHD.png",
                                        width: 26, height: 26),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "PPT",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: kCircularStdMedium,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
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
                            color: kPrimaryColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(
                                        color: kPrimaryColor, width: 0.3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/icons/PDFHD.png",
                                      width: 22, height: 22),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Books Things To Do, Attractions, and Tours",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kCircularStdMedium,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          onPressed: () {
                            Get.back();
                            Get.toNamed(Routes.topDestinationPage);
                          }),
                      CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(
                                        color: kPrimaryColor, width: 0.3)),
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
                              const Text(
                                "Cheap Flights With Cashback",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kCircularStdMedium,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          onPressed: () {
                            Get.back();
                            Get.toNamed(Routes.eventsPage);
                          }),
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

  Widget buildTripPlans(List<Activity> tripPlans) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: tripPlans.map((tripPlan) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/timer.png"),
                      Text(
                        "${tripPlan.time} - ${tripPlan.location}",
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 5),
                  child: Text(
                    tripPlan.description,
                    style: const TextStyle(
                      color: ksecondaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
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
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 113,
                                child: Text(
                                  tripPlan.cost.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: ksecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.topDestinationPage);
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: Text(
                              "Suggestion",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            bottomSheetForDetails(
                                widget.city.toString(),
                                widget.days.toString(),
                                widget.budget.toString(),
                                widget.kind.toString(),
                                widget.transportation.toString());
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: Text(
                              "View Details",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
